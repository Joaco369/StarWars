//
//  StarWarsVM.swift
//  StarWarsDemo
//
//  Created by Joaquin Villarreal on 16/09/2024.
//

import Foundation

@Observable
final class StarWarsVM {
  let repository: DataRepository
  
  var cards: [StarCard]
  
  init(repository: DataRepository = Repository()) {
    self.repository = repository
    do{
      cards = try repository.getData()
    } catch {
      cards = []
    }
  }
}
