//
//  APIClient.swift
//  BreakingBad
//
//  Created by Mark on 5/12/22.
//

import Alamofire

class APIClient {
    static func characters(completion:@escaping (Result<Characters, AFError>)->Void) {
        AF.request(APIRouter.characters)
            .responseDecodable { (response: DataResponse<Characters, AFError>) in
                completion(response.result)
            }
    }
}
