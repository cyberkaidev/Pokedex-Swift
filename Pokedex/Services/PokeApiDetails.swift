//
//  PokeApiDetails.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 26/10/22.
//

import Foundation

class PokeApiDetails{
    func getData(id: String, completion: @escaping (PokemonDetailsModel) -> ()) {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(id)") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            let pokemonDetails = try! JSONDecoder().decode(PokemonDetailsModel.self, from: data)
            
            DispatchQueue.main.async {
                completion(pokemonDetails)
            }
        }.resume()
    }
}
