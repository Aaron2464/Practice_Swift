//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by AaronH on 2020-05-22.
//  Copyright © 2020 AaronH. All rights reserved.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime:Codable {
    let prepTime:Int
    
    enum CodingKeys:String, CodingKey {
        case prepTime = "preparation_time"
    }
}
