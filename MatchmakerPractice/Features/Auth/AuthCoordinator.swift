//
//  AuthCoordinator.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//
import UIKit

final class AuthCoordinator {

    var onAuthFinished: (() -> Void)?

    private let navigationController: UINavigationController
    private let authService: AuthService

    init(
        navigationController: UINavigationController,
        authService: AuthService
    ) {
        self.navigationController = navigationController
        self.authService = authService
    }

    func start() {
        let viewModel = LoginViewModel(
            authService: authService
        )
        
        viewModel.onLoginSuccess = {
            print("AuthCoordinator received login success")
            self.onAuthFinished?()
        }

        let viewController = LoginViewController(
            viewModel: viewModel
        )

        navigationController.setViewControllers(
            [viewController],
            animated: false
        )
    }
}
