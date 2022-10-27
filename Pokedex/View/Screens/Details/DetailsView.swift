//
//  DetailsView.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 26/10/22.
//

import SwiftUI

struct DetailsView: View {
    var id: String
    var name: String
    @State private var showSheetAbilityDetails = false
    @State var details: PokemonDetailsModel?
    @State var shiny = PokemonShinyModel()

    var body: some View {
        ZStack {
          Color.clear.edgesIgnoringSafeArea(.all)
            
            List {
                VStack {
                    PokemonImageLargeView(id: id)
                    if (shiny.sprites?.back_shiny != nil && shiny.sprites?.front_shiny != nil) {
                        TitleBoldView(label: "Shiny version")
                        PokemonImageShinyView(sprites: shiny.sprites)
                    }
                }
                if (details != nil) {
                    TitleBoldView(label: "Types")
                    ForEach(details?.types ?? []) {
                        types in Text("\(types.type.name.capitalized)")
                    }
                    TitleBoldView(label: "Abilities")
                    ForEach(details?.abilities ?? []) {
                        ability in Text("\(ability.ability.name.capitalized)")
                    }
                    TitleBoldView(label: "Moves")
                    ForEach(details?.moves ?? []) {
                        moves in Text("\(moves.move.name.capitalized)")
                    }
                } else {
                    HStack {
                        Spacer()
                        LoadingView()
                        Spacer()
                    }
                }
            }
        }
        .navigationTitle("\(name)")
        .onAppear {
            PokeApiShiny().getData(id: id) {
                shiny in self.shiny = shiny
            }
            PokeApiDetails().getData(id: id) {
                details in self.details = details
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(id: "6", name: "Charmander")
    }
}
