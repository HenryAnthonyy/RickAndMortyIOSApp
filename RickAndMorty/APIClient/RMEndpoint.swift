//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Henry Anthony on 2023/10/15.
//

import Foundation



/// Represents unique API Endpoint
@frozen enum RMEndpoint: String {
    
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
    /// Endpoint to get character info
    case character
}
