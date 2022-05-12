//
//  Character.swift
//  BreakingBad
//
//  Created by Mark on 5/12/22.
//

import Foundation


// MARK: - CharacterElement
struct CharacterElement: Codable {
    let charID: Int
    let name: String
    let occupation: [String]
    let img: String
    let status, nickname: String
    let appearance: [Int]

    enum CodingKeys: String, CodingKey {
        case charID = "char_id"
        case name, occupation, img, status, nickname, appearance
    }
}

typealias Characters = [CharacterElement]
