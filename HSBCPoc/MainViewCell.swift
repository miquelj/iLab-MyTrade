//
//  MainViewCell.swift
//  HSBCPoc
//
//  Created by Pierre A on 17/02/2017.
//  Copyright © 2017 Pierre A. All rights reserved.
//

import UIKit

class MainViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
 
    @IBOutlet weak var LBLDetail: UILabel!
    
    @IBOutlet weak var LBLOrder: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
