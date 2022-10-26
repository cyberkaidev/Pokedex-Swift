//
//  GetIdFromUrl.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 26/10/22.
//

import Foundation

func getIDFromUrl(url: String) -> String {
    return "\(url.components(separatedBy: "/")[url.components(separatedBy: "/").count - 2])"
}
