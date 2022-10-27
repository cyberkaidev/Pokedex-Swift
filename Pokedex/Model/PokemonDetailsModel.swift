//
//  PokemonDetailsModel.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 26/10/22.
//

import Foundation

struct PokemonDetailsModel : Codable {
    var types: [TypeModel]
    var abilities: [AbilityModel]
    var moves: [MovesModel]
}

struct TypeModel : Codable, Identifiable {
    let id = UUID()
    var type: TypeNameModel
    
    enum CodingKeys: String, CodingKey {
        case type
    }
}

struct TypeNameModel : Codable {
    var name: String
}

struct AbilityModel : Codable, Identifiable {
    let id = UUID()
    var ability: AbilityNameModel
    
    enum CodingKeys: String, CodingKey {
        case ability
    }
}

struct AbilityNameModel : Codable {
    var name: String
}

struct MovesModel : Codable, Identifiable {
    let id = UUID()
    var move: MoveNameUrlModel
    
    enum CodingKeys: String, CodingKey {
        case move
    }
}

struct MoveNameUrlModel : Codable {
    var name: String
    var url: String
}
