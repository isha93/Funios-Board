//
//  DotaModel.swift
//  Funios-Board
//
//  Created by Mohammad Azri on 28/09/22.
//

import Foundation

struct DotaModel: Codable {
    let id : Int
    let name : String
    let attribute: PrimaryAttribute
    
    enum CodingKeys : String, CodingKey {
        case id
        case name = "localized_name"
        case attribute = "primary_attr"
    }
}

enum PrimaryAttribute : String, Codable {
    case agi = "agi"
    case int = "int"
    case str = "str"
}
