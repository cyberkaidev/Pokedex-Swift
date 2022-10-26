//
//  Pokemon.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 24/10/22.
//

import Foundation

class PokeApiList {
    func getData(completion: @escaping ([PokemonEntryModel]) -> ()) {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=151") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            let pokemonList = try! JSONDecoder().decode(PokemonModel.self, from: data)
            
            DispatchQueue.main.async {
                completion(pokemonList.results)
            }
        }.resume()
    }
}
