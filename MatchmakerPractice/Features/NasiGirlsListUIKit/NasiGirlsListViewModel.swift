//
//  NasiGirlsListViewModel.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//

import Foundation

final class NasiGirlsListViewModel {

    var onGirlSelected: ((NasiGirl) -> Void)?

    let girls: [NasiGirl] = [
        NasiGirl(id: UUID(), name: "Sarah", age: 23),
        NasiGirl(id: UUID(), name: "Rachel", age: 25),
        NasiGirl(id: UUID(), name: "Leah", age: 27)
    ]

    func didSelectGirl(at index: Int) {
        let girl = girls[index]
        onGirlSelected?(girl)
    }
}
