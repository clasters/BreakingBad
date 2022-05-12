//
//  APIConfiguration.swift
//  BreakingBad
//
//  Created by Mark on 5/12/22.
//

import Alamofire

protocol APIConfiguration: URLRequestConvertible {
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: Parameters? { get }
}
