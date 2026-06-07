//
//  Bootstrap.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//

import UIKit

final class Bootstrap {

    func start(
        window: UIWindow
    ) {
        let container = AppContainer()

        let appCoordinator = AppCoordinator(
            window: window,
            container: container
        )

        appCoordinator.start()
    }
}
