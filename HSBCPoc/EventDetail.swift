//
//  EventDetail.swift
//  HSBCPoc
//
//  Created by Pierre A on 17/02/2017.
//  Copyright © 2017 Pierre A. All rights reserved.
//

import UIKit

class EventDetail: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func logout(_ sender: Any) { self.performSegue(withIdentifier :"logout" ,sender: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
