//
//  InventoryDetailsViewController.swift
//  Json Codeable
//
//  Created by Anand Kulkarni on 11/30/18.
//  Copyright © 2018 Anand Kulkarni. All rights reserved.
//

import UIKit

class InventoryDetailsViewController: UIViewController {

    var inventory: Inventory?
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var stockQuantity: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
