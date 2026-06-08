//
//  NasiGirlsListViewModel.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//

import Foundation

final class NasiGirlsListViewModel {

    var onGirlSelected: ((NasiGirl) -> Void)?

    let girls: [NasiGirl]

    private let girlsRepository: GirlsRepository

    init(girlsRepository: GirlsRepository) {
        self.girlsRepository = girlsRepository
        self.girls = girlsRepository.fetchGirls()
    }

    func didSelectGirl(at index: Int) {
        let girl = girls[index]
        onGirlSelected?(girl)
    }
}
