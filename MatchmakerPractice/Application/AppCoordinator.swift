//
//  AppCoordinator.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//
import UIKit

final class AppCoordinator {

    private let window: UIWindow
    private let container: AppContainer

    private var authCoordinator: AuthCoordinator?
    private var mainTabCoordinator: MainTabCoordinator?

    init(window: UIWindow, container: AppContainer) {
        self.window = window
        self.container = container
    }
    func start() {
        let navigationController = UINavigationController()

        let authCoordinator = AuthCoordinator(
            navigationController: navigationController,
            authService: container.authService
        )

        self.authCoordinator = authCoordinator

        //authCoordinator.onAuthFinished = { [weak self] in
        //
        //}
        authCoordinator.onAuthFinished = {
            print("AppCoordinator received auth finished")
            self.showMainTabs()
        }

        window.rootViewController = navigationController
        window.makeKeyAndVisible()

        authCoordinator.start()
    }
    
    private func showMainTabs() {
        
        
        print("AppCoordinator showMainTabs()")

        let mainTabCoordinator = MainTabCoordinator(
            window: window
        )

        self.mainTabCoordinator = mainTabCoordinator

        mainTabCoordinator.start()
    }
    
    
}
