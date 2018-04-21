//
//  CustomTableViewCell.swift
//  MyiOSTrialTableView
//
//  Created by Home on 21/04/18.
//  Copyright © 2018 Home. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet var cellView: UIView!
    @IBOutlet var animalImage: UIImageView!
    @IBOutlet var animalLbl: UILabel!
}
