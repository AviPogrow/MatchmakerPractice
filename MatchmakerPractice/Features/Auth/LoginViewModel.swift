//
//  LoginViewModel.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//

import Foundation

@MainActor
final class LoginViewModel {

    private let authService: AuthService

    init(authService: AuthService) {
        self.authService = authService
    }

    func login(
        email: String,
        password: String
    ) async {
        do {
            let session = try await authService.login(
                email: email,
                password: password
            )

            print("Login succeeded:", session.userID)
        } catch {
            print("Login failed:", error)
        }
    }
}
