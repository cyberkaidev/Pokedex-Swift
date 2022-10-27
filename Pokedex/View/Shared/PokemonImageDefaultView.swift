//
//  PokemonImage.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 24/10/22.
//

import SwiftUI

struct PokemonImageDefaultView: View {
    @State var id = ""
    @State var size: CGFloat? = 75
    
    var body: some View {
        AsyncImage(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(id).png"))
            .frame(width: size, height: size)
            .clipShape(Circle())
            .foregroundColor(Color.gray.opacity(0.60))
            .scaledToFit()
    }
}

struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        PokemonImageDefaultView()
            .previewInterfaceOrientation(.portrait)
    }
}

