//
//  inventoryJsonLoader.swift
//  Json Codeable
//
//  Created by Anand Kulkarni on 11/30/18.
//  Copyright © 2018 Anand Kulkarni. All rights reserved.
//

import Foundation

class inventoryJsonLoader{
    
    class func load(filename: String) -> [Inventory] {
        var products = [Inventory]()
        
        if let path = Bundle.main.path(forResource: filename, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            products = InventoryJsonParser.parse(data)
        }
        
        return products
    }
}
