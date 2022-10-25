//
//  CatalogViewModel.swift
//  EMenu (урезанный)
//
//  Created by Абылхаир Амантаев on 19.10.2022.
//

import Foundation

class CatalogViewModel: ObservableObject {
    
    static let shared = CatalogViewModel()
    
    var products = [
        Product(id: "1", title: "Pasta", imageUrl: "Unknown", price: 3500, description: "There's something more"),
        Product(id: "2", title: "Penne", imageUrl: "Unknown", price: 3500, description: "There's something more"),
        Product(id: "3", title: "Macaroni", imageUrl: "Unknown", price: 3500, description: "There's something more"),
        Product(id: "4", title: "Pizza", imageUrl: "Unknown", price: 3500, description: "There's something more"),
        Product(id: "5", title: "Gurme", imageUrl: "Unknown", price: 3500, description: "There's something more")
    ]
}
