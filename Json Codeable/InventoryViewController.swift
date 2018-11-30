//
//  InventoryViewController.swift
//  Json Codeable
//
//  Created by Anand Kulkarni on 11/30/18.
//  Copyright © 2018 Anand Kulkarni. All rights reserved.
//

import UIKit

class InventoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    
    @IBOutlet weak var inventoryTable: UITableView!
    
    let inventoryProducts = inventoryJsonLoader.load(filename: "inventory")
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inventoryProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "inventoryCell", for: indexPath)
        
        if let cell = cell as? InventoryTableViewCell {
            let inventorys = inventoryProducts[indexPath.row]
            cell.titleLabel.text = inventorys.title
            cell.idLabel.text = inventorys.id.rawValue
            
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? InventoryDetailsViewController,
            let row = inventoryTable.indexPathForSelectedRow?.row {
            destination.inventory = inventoryProducts[row]
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
