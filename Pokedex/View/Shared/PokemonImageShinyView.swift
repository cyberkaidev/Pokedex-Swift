//
//  PokemonImageShiny.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 27/10/22.
//

import SwiftUI

struct PokemonImageShinyView: View {
    @State var sprites: SpritesShinyModel?

    var body: some View {
        HStack {
            if (sprites?.back_shiny != nil) {
                AsyncImage(url: URL(
                    string: sprites?.back_shiny ?? ""
                )) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .foregroundColor(Color.gray.opacity(0.60))
                                
                        } placeholder: {
                            Color.gray.opacity(0.60)
                        }
                        .clipShape(Circle())
                        .foregroundColor(Color.gray.opacity(0.60))
                        .frame(width: 80, height: 80)
            }
            if (sprites?.front_shiny != nil) {
                AsyncImage(url: URL(
                    string: sprites?.front_shiny ?? ""
                )) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .foregroundColor(Color.gray.opacity(0.60))
                                
                        } placeholder: {
                            Color.gray.opacity(0.60)
                        }
                        .clipShape(Circle())
                        .foregroundColor(Color.gray.opacity(0.60))
                        .frame(width: 80, height: 80)
            }
        }
    }
}

struct PokemonImageShiny_Previews: PreviewProvider {
    static var previews: some View {
        PokemonImageShinyView(sprites: SpritesShinyModel(back_shiny: "", front_shiny: ""))
    }
}
