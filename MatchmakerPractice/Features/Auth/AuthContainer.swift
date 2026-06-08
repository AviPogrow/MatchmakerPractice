//
//  AuthContainer.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/8/26.
//

import Foundation

final class AuthContainer {

    private let authService: AuthService

    init(authService: AuthService) {
        self.authService = authService
    }

    func makeLoginViewModel() -> LoginViewModel {
        LoginViewModel(
            authService: authService
        )
    }

    func makeLoginViewController() -> LoginViewController {
        let viewModel = makeLoginViewModel()

        return LoginViewController(
            viewModel: viewModel
        )
    }
}
