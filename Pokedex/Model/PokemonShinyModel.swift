//
//  PokemonShinyModel.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 27/10/22.
//

import Foundation

struct PokemonShinyModel : Decodable {
    var sprites: SpritesShinyModel?
}

struct SpritesShinyModel : Decodable {
    var back_shiny: String?
    var front_shiny: String?
}
