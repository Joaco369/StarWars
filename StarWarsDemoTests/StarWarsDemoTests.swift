//
//  StarWarsDemoTests.swift
//  StarWarsDemoTests
//
//  Created by Joaquin Villarreal on 18/09/2024.
//

import Testing
@testable import StarWarsDemo

extension Tag {
  @Tag static var repository: Self
}
@Suite("Test of repository of star cards", .tags(.repository))
struct StarWarsDemoTests {
  
  let repository = Repository()
  let viewModel = StarWarsVM(repository: Repository())
  
  @Test("Test data load in repository")
  func dataLoad() throws {
    let data = try repository.getData()
    #expect(data.count == 31)
  }
  
  @Test("Test data load in view model")
  func dataLoadVM() throws {
    #expect(viewModel.cards.count == 31)
  }
}
