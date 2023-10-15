//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Henry Anthony on 2023/10/15.
//

import Foundation

enum RMCharacterGender: String, Codable {
    // Female, Male, Genderless, unknown
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case unknown = "unknown"
}
