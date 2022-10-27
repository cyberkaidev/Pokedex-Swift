//
//  PokemonEntryModel.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 25/10/22.
//

import Foundation

struct PokemonsModel : Codable {
    var results: [PokemonEntryModel]
}

struct PokemonEntryModel : Codable, Identifiable {
    let id = UUID()
    var name: String
    var url: String
    
    enum CodingKeys: String, CodingKey {
        case name, url
    }
}
