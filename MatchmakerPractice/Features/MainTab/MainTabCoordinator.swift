import UIKit

final class MainTabCoordinator {

    private let window: UIWindow

    private var nasiGirlsListCoordinator: NasiGirlsListCoordinator?
    let girlsContainer = GirlsContainer()

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        print("MainTabCoordinator start()")

        let tabBarController = UITabBarController()

        let girlsNavigationController = UINavigationController()

        let girlsContainer = GirlsContainer()

        let nasiGirlsListCoordinator = NasiGirlsListCoordinator(
            navigationController: girlsNavigationController,
            container: girlsContainer
        )

        self.nasiGirlsListCoordinator = nasiGirlsListCoordinator

        nasiGirlsListCoordinator.start()


        girlsNavigationController.tabBarItem = UITabBarItem(
            title: "UIKit",
            image: UIImage(systemName: "person.2"),
            selectedImage: UIImage(systemName: "person.2.fill")
        )

        let swiftUIPlaceholder = UIViewController()
        swiftUIPlaceholder.view.backgroundColor = .systemBackground
        swiftUIPlaceholder.title = "Girls SwiftUI"

        let swiftUINavigationController = UINavigationController(
            rootViewController: swiftUIPlaceholder
        )

        swiftUINavigationController.tabBarItem = UITabBarItem(
            title: "SwiftUI",
            image: UIImage(systemName: "list.bullet"),
            selectedImage: UIImage(systemName: "list.bullet")
        )

        tabBarController.viewControllers = [
            girlsNavigationController,
            swiftUINavigationController
        ]

        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
    }
}
