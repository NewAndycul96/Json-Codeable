//
//  InventoryJsonParser.swift
//  Json Codeable
//
//  Created by Anand Kulkarni on 11/30/18.
//  Copyright © 2018 Anand Kulkarni. All rights reserved.
//

import Foundation

class InventoryJsonParser {
    
    class func parse(_ data: Data) -> [Inventory] {
        var inventorys = [Inventory]()
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok"{
            
            if let products = root["products"] as? [Any]{
                for product in products{
                    if let product = product as? [String: String]{
                        if let idName = product["id"],
                            let category = product["category"],
                            let title = product["title"],
                            let price = product["price"],
                            let stockQuantity = product["stockQuantity"]{
                            
                            if let inventory = Inventory(idName: idName, category: category, title: title, price: price, stockQuantity: stockQuantity){
                            inventorys.append(inventory)
                            }
                        }
                    }
                }
            }
        }
    return inventorys
    }
}
