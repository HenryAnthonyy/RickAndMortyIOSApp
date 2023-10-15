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
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
