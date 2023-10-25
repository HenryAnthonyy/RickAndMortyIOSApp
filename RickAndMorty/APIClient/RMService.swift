//
//  RMService.swift
//  RickAndMorty
//
//  Created by Henry Anthony on 2023/10/14.
//

import Foundation



/// Primary API Service to get Rick and Morty data
final class RMService {
    
    
    /// Shared singleton service
    static let shared = RMService()
    
    
    /// Privatized constructor
    private init() {}
    
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(_ request: RMRequest, expecting type: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        
    }
}
