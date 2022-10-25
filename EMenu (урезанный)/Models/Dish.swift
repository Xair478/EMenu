//
//  Dish.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 25.10.2022.
//

import Foundation

struct Dish {
    let id: String?
    let name: String?
    let description: String?
    let image: String?
    let amount: Int
    
    var formattedAmount: String {
        return String(format: "\(amount)")
    }
}
