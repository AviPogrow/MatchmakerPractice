//
//  AuthService.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//

import Foundation

// allows the view model to depend on an abstraction
protocol AuthService {
    func login(
        email: String,
        password: String
    ) async throws -> UserSession
}
