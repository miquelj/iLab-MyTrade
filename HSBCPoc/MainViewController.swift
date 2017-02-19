//
//  MainViewController.swift
//  HSBCPoc
//
//  Created by Pierre A on 14/02/2017.
//  Copyright © 2017 Pierre A. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //MainViewTitleBar.title
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
  
    @IBOutlet weak var tableView: UITableView!
    
    
    

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return OrdersData.Singleton.Imports.count
        case 1:
            return OrdersData.Singleton.Exports.count
        case 2:
            return OrdersData.Singleton.AllEvents.count
        default:
            return OrdersData.Singleton.AllEvents.count        }
        
    }
    
    @IBOutlet weak var MainViewTitleBar: UINavigationBar!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainViewCell", for: indexPath) as! MainViewCell
        
        
        
        // Configure the cell...
        var table = OrdersData.Singleton.sections
        
        switch indexPath.row {
        case 0:
            table = OrdersData.Singleton.Imports
        case 1:
            table = OrdersData.Singleton.Exports
        case 2:
            table = OrdersData.Singleton.AllEvents
        default:
            table = OrdersData.Singleton.AllEvents
        }
        cell.LBLOrder.text = table.count.description
        cell.LBLDetail.text=OrdersData.Singleton.sections[indexPath.row]
        
        return cell
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

 func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    // #warning Incomplete implementation, return the number of rows
    switch indexPath.row {
    case 0:
        OrdersData.Singleton.CurrentView = OrdersData.Singleton.Exports
    case 1:
        OrdersData.Singleton.CurrentView = OrdersData.Singleton.Exports
    case 2:
        OrdersData.Singleton.CurrentView = OrdersData.Singleton.Exports
    default:
        OrdersData.Singleton.CurrentView = OrdersData.Singleton.Exports
    }
}
}
