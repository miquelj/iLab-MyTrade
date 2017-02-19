//
//  CategoryListTableViewCell.swift
//  HSBCPoc
//
//  Created by Pierre A on 17/02/2017.
//  Copyright © 2017 Pierre A. All rights reserved.
//

import UIKit

class CategoryListTableViewCell: UITableViewCell {
    @IBOutlet weak var LBLCategory: UILabel!

    @IBOutlet weak var LBLCount: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
