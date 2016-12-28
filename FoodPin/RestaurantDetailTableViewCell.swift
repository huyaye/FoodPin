//
//  RestaurantDetailTableViewCell.swift
//  FoodPin
//
//  Created by 유정욱 on 2016. 12. 28..
//  Copyright © 2016년 AppCoda. All rights reserved.
//

import UIKit

class RestaurantDetailTableViewCell: UITableViewCell {
    @IBOutlet var fieldLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
