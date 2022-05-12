//
//  URLConstant.swift
//  BreakingBad
//
//  Created by Mark on 5/12/22.
//

import Foundation

struct K {
    struct ProductionServer {
        static let baseURL = "https://breakingbadapi.com/api/"
    }
    
    struct APIParameterKey {
    }
}

enum HTTPHeaderField: String {
    case contentType = "Content-Type"
    case acceptType = "Accept"
}

enum ContentType: String {
    case json = "application/json"
}
