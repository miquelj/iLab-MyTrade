//
//  CategoryListViewController.swift
//  HSBCPoc
//
//  Created by Pierre A on 17/02/2017.
//  Copyright © 2017 Pierre A. All rights reserved.
//

import UIKit

class CategoryListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBAction func logout(_ sender: Any) {
        self.performSegue(withIdentifier :"Logout" ,sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryListCell", for: indexPath) as! CategoryListTableViewCell
        
        
        
        // Configure the cell...
        var table = OrdersData.Singleton.sections
        
        switch indexPath.section {
        case 0:
            table = OrdersData.Singleton.Imports
            
            cell.LBLCategory.text = "Imports"
        case 1:
            table = OrdersData.Singleton.Exports
            
            cell.LBLCategory.text = "Exports"
        case 2:
            table = OrdersData.Singleton.AllEvents
            
            cell.LBLCategory.text = "Events"
        default:
            cell.LBLCategory.text=""
        }
  
        cell.LBLCount.text = "("  + table.count.description + ")"
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // #warning Incomplete implementation, return the number of rows
        switch indexPath.section {
        case 0:
            OrdersData.Singleton.CurrentView = OrdersData.Singleton.Imports
            OrdersData.Singleton.CurrentSection = "Imports"
        case 1:
            OrdersData.Singleton.CurrentView = OrdersData.Singleton.Exports
            OrdersData.Singleton.CurrentSection = "Exports"
        case 2:
            OrdersData.Singleton.CurrentView = OrdersData.Singleton.AllEvents
            OrdersData.Singleton.CurrentSection = "Events"
        default:
            OrdersData.Singleton.CurrentView = OrdersData.Singleton.AllEvents
        }
    }
}
