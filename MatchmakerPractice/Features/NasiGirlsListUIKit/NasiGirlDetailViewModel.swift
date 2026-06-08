//
//  NasiGirlDetailViewModel.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/7/26.
//

import Foundation

final class NasiGirlDetailViewModel {

    private let girl: NasiGirl

    init(girl: NasiGirl) {
        self.girl = girl
    }

    var nameText: String {
        girl.name
    }

    var ageText: String {
        "Age: \(girl.age)"
    }
}
