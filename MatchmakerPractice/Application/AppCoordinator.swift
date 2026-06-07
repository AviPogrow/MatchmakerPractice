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
    
    init(window: UIWindow, container: AppContainer) {
        self.window = window
        self.container = container
    }
    func start() {
        print("AppCoordinator.start()")
        
        let viewController = ViewController()
        viewController.view.backgroundColor = .systemBackground
        
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }
}
