//
//  GetSpriteViewModel.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 25/10/22.
//

import SwiftUI
import Foundation

struct GetSpriteViewModel {
    
    func getSprite(url: String) -> String {
        var tempSprite: String?
        @State var pokemonSprite = ""
        PokemonSelectedApiViewModel().getSprite(url: url) {
            sprite in tempSprite = sprite.front_default
            pokemonSprite = tempSprite ?? "placeholder"
            print("func > \(tempSprite)")
        }
        //print("func > \(pokemonSprite)")
        return pokemonSprite
    }
}
