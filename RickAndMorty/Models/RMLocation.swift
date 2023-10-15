//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Henry Anthony on 2023/9/13.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
