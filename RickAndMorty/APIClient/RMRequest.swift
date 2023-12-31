//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Henry Anthony on 2023/10/14.
//

import Foundation


/// Object that represents an API call
final class RMRequest {
    //Base url
    //Endpoint
    //Path components
    //Query parameters
    
    
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    
    
    /// Desired Endpoint
    private  let endpoint: RMEndpoint
    
    
    /// Path components for API,  if any
    private  let pathComponents: Set<String>
    
    
    /// Query arguments, if any
    private  let queryParameters: [URLQueryItem]
    
    
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "/"
            let argumenString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "/\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumenString
        }
        
        return string
    }
    
    
    
    /// Computed and constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    
    /// Desired http method
    public let httpMethod = "GET"
    
    //MARK - Public
    
    
    
    /// Contruct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: Collection of query parameters
    public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
