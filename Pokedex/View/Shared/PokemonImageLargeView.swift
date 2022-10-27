//
//  PokemonImageLarge.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 27/10/22.
//

import SwiftUI

struct PokemonImageLargeView: View {
    var id: String
    var body: some View {
        HStack {
            Spacer()
            AsyncImage(url: URL(
                string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(id).png"
            )) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .foregroundColor(Color.gray.opacity(0.60))
                            
                    } placeholder: {
                        Color.gray
                    }
                    .clipShape(Circle())
                    .foregroundColor(Color.gray.opacity(0.60))
                    .frame(width: 200)
            Spacer()
        }
    }
}

struct PokemonImageLarge_Previews: PreviewProvider {
    static var previews: some View {
        PokemonImageLargeView(id: "6")
    }
}
