//
//  SkeletonTableViewCell.swift
//  SkeletonTest
//
//  Created by Sujin Chaichanamongkol on 28/12/2562 BE.
//  Copyright © 2562 Sujin Chaichanamongkol. All rights reserved.
//

import UIKit

class SkeletonTableViewCell: UITableViewCell {

    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
