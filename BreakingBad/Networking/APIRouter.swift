//
//  APIRouter.swift
//  BreakingBad
//
//  Created by Mark on 5/12/22.
//

import Alamofire

enum APIRouter: URLRequestConvertible {
    
    case characters
    
    // MARK: - HTTPMethod
    private var method: HTTPMethod {
        switch self {
        case .characters:
            return .get
        }
    }
    
    // MARK: - Path
    private var path: String {
        switch self {
        case .characters:
            return "characters"
        }
    }
    
    // MARK: - Parameters
    private var parameters: Parameters? {
        switch self {
        case .characters:
            return nil
        }
    }
    
    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        let url = try (K.ProductionServer.baseURL + path).asURL()
        
        var urlRequest = URLRequest(url: url )
        
        // HTTP Method
        urlRequest.httpMethod = method.rawValue
        
        // Common Headers
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.acceptType.rawValue)
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)
        
        // Parameters
        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        
        return urlRequest
    }
}
