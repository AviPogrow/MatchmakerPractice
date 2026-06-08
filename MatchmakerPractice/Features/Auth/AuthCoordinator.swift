//
//  AuthCoordinator.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.

import UIKit

final class AuthCoordinator {

    var onAuthFinished: (() -> Void)?

    private let navigationController: UINavigationController
    private let container: AuthContainer

    init(
        navigationController: UINavigationController,
        container: AuthContainer
    ) {
        self.navigationController = navigationController
        self.container = container
    }

    func start() {
        let viewController = container.makeLoginViewController()

        viewController.viewModel.onLoginSuccess = {
            print("AuthCoordinator received login success")
            self.onAuthFinished?()
        }

        navigationController.setViewControllers(
            [viewController],
            animated: false
        )
    }
}
