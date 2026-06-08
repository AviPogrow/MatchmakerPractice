//
//  FakeGirlsRepository.swift
//  MatchmakerPractice
//
//  Created by Avi Pogrow on 6/8/26.
//
import Foundation

final class FakeGirlsRepository: GirlsRepository {

    func fetchGirls() -> [NasiGirl] {
        [
            NasiGirl(id: UUID(), name: "Sarah", age: 23),
            NasiGirl(id: UUID(), name: "Rachel", age: 25),
            NasiGirl(id: UUID(), name: "Leah", age: 27)
        ]
    }
}
