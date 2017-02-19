//
//  OrderListViewController.swift
//  HSBCPoc
//
//  Created by Pierre A on 17/02/2017.
//  Copyright © 2017 Pierre A. All rights reserved.
//

import UIKit

class OrderListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!

    @IBOutlet weak var navBar: UINavigationItem!
    
    @IBOutlet weak var navigate: UINavigationBar!
    
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
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        navBar.title = OrdersData.Singleton.CurrentSection
            return OrdersData.Singleton.CurrentView.count
       
    }
    
 
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderListCell", for: indexPath) as! OrderListCell
        
        
        
       
        cell.textLabel?.text = OrdersData.Singleton.CurrentView[indexPath.row]
        
        
        return cell
    }
    
    
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
