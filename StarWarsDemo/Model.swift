//
//  Model.swift
//  StarWarsDemo
//
//  Created by Joaquin Villarreal on 16/09/2024.
//

import Foundation

struct StarCardDTO: Codable {
  let id: Int
<<<<<<< HEAD
  let nombre: String
=======
  let name: String
>>>>>>> 3493521609f48fc4ee6a7911b3d90494fcf9d224
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
<<<<<<< HEAD
             nombre: nombre,
=======
             name: name,
>>>>>>> 3493521609f48fc4ee6a7911b3d90494fcf9d224
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
<<<<<<< HEAD
  let nombre: String
=======
  let name: String
>>>>>>> 3493521609f48fc4ee6a7911b3d90494fcf9d224
  let raza: String
  let descripcion: String
  let planetaOrigen: String
  let epoca: String
  let afiliacion: [String]
  let habilidades: [String]
  let armas: [String]
  let imagen: String
}
<<<<<<< HEAD

extension StarCard {
  static let test = StarCard(id: 6629,
                             nombre: "Luke Skywalker",
                             raza: "Humano",
                             descripcion: "Heroe de la Alianza Rebelde y Caballero Jedi. Hijo de Anakin Skywalker y Padmé Amidala.",
                             planetaOrigen: "Tatooine",
                             epoca: "Era del imperio Galactico",
                             afiliacion: ["Alianza Rebelde", "Nueva republica"],
                             habilidades: ["Uso de la fuerza", "Combate con sable de luz", "Pilotaje"],
                             armas: ["Sable de luz"],
                             imagen: "lukeskywalker")
}
=======
>>>>>>> 3493521609f48fc4ee6a7911b3d90494fcf9d224
