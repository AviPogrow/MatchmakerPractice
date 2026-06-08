//
//  NasiGirlsListViewModelTests.swift
//  MatchmakerPracticeTests
//
//  Created by Avi Pogrow on 6/8/26.
//

import XCTest
@testable import MatchmakerPractice

final class NasiGirlsListViewModelTests: XCTestCase {
    
    func testViewModelLoadsGirlsFromRepository() {
        let sarah = NasiGirl(
            id: UUID(),
            name: "Sarah",
            age: 23
        )

        let repository = MockGirlsRepository(
            girls: [sarah]
        )

        let viewModel = NasiGirlsListViewModel(
            girlsRepository: repository
        )

        XCTAssertEqual(viewModel.girls.count, 1)
        XCTAssertEqual(viewModel.girls.first?.name, "Sarah")
    }
    
    func testCanCreateNasiGirl() {
        let girl = NasiGirl(
            id: UUID(),
            name: "Sarah",
            age: 23
        )

        XCTAssertEqual(girl.name, "Sarah")
    }
    
    

    func testMockRepositoryReturnsGirls() {
        let sarah = NasiGirl(
            id: UUID(),
            name: "Sarah",
            age: 23
        )

        let repository = MockGirlsRepository(
            girls: [sarah]
        )

        let girls = repository.fetchGirls()

        XCTAssertEqual(girls.count, 1)
        XCTAssertEqual(girls.first?.name, "Sarah")
    }

}

private final class MockGirlsRepository: GirlsRepository {

    private let girls: [NasiGirl]

    init(girls: [NasiGirl]) {
        self.girls = girls
    }

    func fetchGirls() -> [NasiGirl] {
        girls
    }
}
