//
//  Inventory.swift
//  Json Codeable
//
//  Created by Anand Kulkarni on 11/30/18.
//  Copyright © 2018 Anand Kulkarni. All rights reserved.
//

import Foundation

struct Inventory {
    let id: Id
    let category: String
    let title: String
    let price: Double
    let stockQuantity: Int
    
    init (id: Id, category: String, title: String, price: Double, stockQuantity: Int) {
        self.id = id
        self.category = category
        self.title = title
        self.price = price
        self.stockQuantity = stockQuantity
    }
    
    init?(idName:String, category:String, title: String, price: Double, stockQuantity: Int) {
        if let id = Id(rawValue: idName) {
            self.init(id: id, category: category, title: title, price: price, stockQuantity: stockQuantity)
        }
        else {
            return nil
        }
    }
}
