//
//  NasiGirlsListCoordinator.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//
import UIKit

final class NasiGirlsListCoordinator {

    private let navigationController: UINavigationController
    private let container: GirlsContainer

    init(
        navigationController: UINavigationController,
        container: GirlsContainer
    ) {
        self.navigationController = navigationController
        self.container = container
    }

    func start() {
        let viewController = container.makeListViewController()

        viewController.viewModel.onGirlSelected = { girl in
            self.showDetail(for: girl)
        }

        navigationController.setViewControllers(
            [viewController],
            animated: false
        )
    }

    private func showDetail(for girl: NasiGirl) {
        let detailViewController = container.makeDetailViewController(
            girl: girl
        )

        navigationController.pushViewController(
            detailViewController,
            animated: true
        )
    }
}
