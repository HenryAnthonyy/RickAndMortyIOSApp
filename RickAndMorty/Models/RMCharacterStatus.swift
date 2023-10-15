//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Henry Anthony on 2023/10/15.
//

import Foundation


enum RMCharacterStatus: String, Codable {
    // Alive, Dead, Unknown
    case alive = "Alive"
    case `dead` = "Dead"
    case `unknown` = "Unknown"
}
