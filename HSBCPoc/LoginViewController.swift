//
//  ViewController.swift
//  HSBCPoc
//
//  Created by Pierre A on 15/01/2017.
//  Copyright © 2017 Pierre A. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var UserName: UITextField!
    
    @IBOutlet weak var signIn: UIButton!
   
    @IBOutlet var loginViee: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onLogin(_ sender: Any) {
    
        
        if(Password.text=="password")
        {
            UserDefaults.standard.set(UserName.text, forKey : "UserName")
            //self.dismiss(animated:true, completion:nil)
            self.performSegue(withIdentifier :"displayHome" ,sender: self)
            
        }
        else{
            self.performSegue(withIdentifier :"invalidLogin" ,sender: self)
        }
    
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

