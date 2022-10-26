//
//  PokemonImage.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 24/10/22.
//

import SwiftUI

struct PokemonImageView: View {
    @State var imageLink = ""
    @State private var urlPokemon = ""
    
    var body: some View {
        AsyncImage(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(imageLink).png"))
            .frame(width: 75, height: 75)
            .clipShape(Circle())
            .foregroundColor(Color.gray.opacity(0.60))
            .scaledToFit()
    }
}

struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        PokemonImageView()
            .previewInterfaceOrientation(.portrait)
    }
}

