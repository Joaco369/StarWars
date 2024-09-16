//
//  Repository.swift
//  StarWarsDemo
//
//  Created by Joaquin Villarreal on 16/09/2024.
//

import Foundation

func getData() throws -> [StarCard] {
  let url = Bundle.main.url(forResource: "StarWars", withExtension: "json")!
  let data = try Data(contentsOf: url)
  let decoder = JSONDecoder()
  decoder.keyDecodingStrategy = .convertFromSnakeCase
}
