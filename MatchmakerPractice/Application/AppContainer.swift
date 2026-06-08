//
//  AppContainer.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//

import Foundation

final class AppContainer {

    let authContainer: AuthContainer
    let girlsContainer: GirlsContainer

    init() {
        let authService = FakeAuthService()

        self.authContainer = AuthContainer(
            authService: authService
        )

        let girlsRepository = FakeGirlsRepository()

        self.girlsContainer = GirlsContainer(
            girlsRepository: girlsRepository
        )
    }
}
