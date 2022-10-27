//
//  PokeApiShiny.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 27/10/22.
//

import Foundation

class PokeApiShiny {
    func getData(id: String, completion: @escaping (PokemonShinyModel) -> ()) {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon-form/\(id)") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            let pokemonDetails = try! JSONDecoder().decode(PokemonShinyModel.self, from: data)
            
            DispatchQueue.main.async {
                completion(pokemonDetails)
            }
        }.resume()
    }
}
