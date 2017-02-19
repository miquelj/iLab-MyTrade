//
//  DefaultTableViewController.swift
//  HSBCPoc
//
//  Created by Pierre A on 16/01/2017.
//  Copyright © 2017 Pierre A. All rights reserved.
//

import UIKit

class CategossryListTableViewController: UITableViewController {

    
  

    override func viewDidLoad(){
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Disconnect(_ sender: Any) {
        //UserDefaults.standard.removeObject( forKey : "UserName")
        //self.performSegue(withIdentifier :"fromHomeToLogin" ,sender: self)

    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
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

    
    @IBAction func BtnLogoutClick(_ sender: Any) {
         UserDefaults.standard.removeObject( forKey : "UserName")
        //var t = UserDefaults.standard.value(forKey:"UserName")
        
        
        self.performSegue(withIdentifier :"fromHomeToLogin" ,sender: self)
    }

    override func viewDidAppear(_ animated: Bool) {
        
        if(UserDefaults.standard.value(forKey:"UserName")==nil)
        {
            self.performSegue(withIdentifier :"fromHomeToLogin" ,sender: self)
        }

    }
    


    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryListCell", for: indexPath) as! CategoryListTableViewCell

        
        
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
        cell.textLabel?.text="aaaaa"
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
