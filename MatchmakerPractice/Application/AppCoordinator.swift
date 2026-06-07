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

        authCoordinator.onAuthFinished = { [weak self] in
            print("AppCoordinator received auth finished")
        }

        window.rootViewController = navigationController
        window.makeKeyAndVisible()

        authCoordinator.start()
    }
    
    
    
}
