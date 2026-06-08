//
//  GirlsContainer.swift.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//

import Foundation
import UIKit

final class GirlsContainer {

    func makeListViewModel() -> NasiGirlsListViewModel {
        NasiGirlsListViewModel()
    }

    func makeDetailViewModel(
        girl: NasiGirl
    ) -> NasiGirlDetailViewModel {
        NasiGirlDetailViewModel(girl: girl)
    }

    func makeListViewController() -> NasiGirlsListViewController {
        let viewModel = makeListViewModel()

        return NasiGirlsListViewController(
            viewModel: viewModel
        )
    }

    func makeDetailViewController(
        girl: NasiGirl
    ) -> NasiGirlDetailViewController {
        let viewModel = makeDetailViewModel(girl: girl)

        return NasiGirlDetailViewController(
            viewModel: viewModel
        )
    }
}
