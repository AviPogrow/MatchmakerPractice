//
//  GirlsRepository.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/8/26.
//

import Foundation

protocol GirlsRepository {
    func fetchGirls() -> [NasiGirl]
}
