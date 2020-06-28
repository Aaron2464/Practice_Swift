//
//  Order.swift
//  Restaurant
//
//  Created by AaronH on 2020-05-22.
//  Copyright © 2020 AaronH. All rights reserved.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
