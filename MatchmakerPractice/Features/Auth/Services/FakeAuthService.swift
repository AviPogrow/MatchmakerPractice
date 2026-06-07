//
//  FakeAuthService.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//

import Foundation

final class FakeAuthService: AuthService {

    func login(email: String,password: String) async throws -> UserSession {

        try await Task.sleep(nanoseconds: 1_000_000_000)

        return UserSession(userID: UUID().uuidString)
    }
}
