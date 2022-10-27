//
//  ContentView.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 24/10/22.
//

import SwiftUI

struct HomeView: View {
    @State var pokemon = [PokemonEntryModel]()
    @State var searchText = ""

    var body: some View {
        NavigationView {
            List {
                ForEach(searchText == "" ? pokemon: pokemon.filter( {$0.name.contains(searchText.lowercased())} )) {
                    entry in HStack {
                        PokemonImageView(imageLink: getIDFromUrl(url: entry.url)).padding(.trailing, 20)
                        NavigationLink(
                            "\(entry.name)".capitalized,
                            destination: DetailsView(
                                id: getIDFromUrl(url: entry.url),
                                name: entry.name.capitalized
                            )
                        )
                    }
                }
            }
            .onAppear {
                PokeApiList().getData() {
                    pokemon in self.pokemon = pokemon
                }
            }
            .overlay(loadingOverlay)
            .searchable(text: $searchText)
            .navigationTitle("Pokedex")
        }
    }
    
    @ViewBuilder private var loadingOverlay: some View {
        if pokemon.isEmpty {
            ZStack { LoadingView() }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
