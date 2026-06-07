//
//  MainTabCoordinator.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//

import UIKit

final class MainTabCoordinator {

    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        
        print("MainTabCoordinator start()")
        
        let tabBarController = UITabBarController()

        let placeholder = UIViewController()
        placeholder.view.backgroundColor = .systemBackground
        placeholder.title = "Girls UIKit"
        placeholder.tabBarItem = UITabBarItem(
            title: "UIKit",
            image: UIImage(systemName: "person.2"),
            selectedImage: UIImage(systemName: "person.2.fill")
        )

        let swiftUIPlaceholder = UIViewController()
        swiftUIPlaceholder.view.backgroundColor = .systemBackground
        swiftUIPlaceholder.title = "Girls SwiftUI"
        swiftUIPlaceholder.tabBarItem = UITabBarItem(
            title: "SwiftUI",
            image: UIImage(systemName: "list.bullet"),
            selectedImage: UIImage(systemName: "list.bullet")
        )

        tabBarController.viewControllers = [
            UINavigationController(rootViewController: placeholder),
            UINavigationController(rootViewController: swiftUIPlaceholder)
        ]

        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
    }
    
}
