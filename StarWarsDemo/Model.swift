//
//  Model.swift
//  StarWarsDemo
//
//  Created by Joaquin Villarreal on 16/09/2024.
//

import Foundation

struct StarCardDTO: Codable {
  let id: Int
  let name: String
  let raza: String
  let descripcion: String
  let planetaOrigen: String
  let epoca: String
  let afiliacion: String
  let habilidades: String
  let armas: String
  let imagen: String
}

extension StarCardDTO {
  var toCard: StarCard {
    StarCard(id: id,
             name: name,
             raza: raza,
             descripcion: descripcion,
             planetaOrigen: planetaOrigen,
             epoca: epoca,
             afiliacion: afiliacion.components(separatedBy: ", ").map(\.capitalized),
             habilidades: habilidades.components(separatedBy: ", ").map(\.capitalized),
             armas: armas.components(separatedBy: ", ").map(\.capitalized),
             imagen: imagen)
  }
}

struct StarCard: Identifiable, Hashable {
  let id: Int
  let name: String
  let raza: String
  let descripcion: String
  let planetaOrigen: String
  let epoca: String
  let afiliacion: [String]
  let habilidades: [String]
  let armas: [String]
  let imagen: String
}
