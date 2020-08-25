//
//  ListFoodCell.swift
//  Let's Eat!
//
//  Created by Marsel Estefan Lie on 12/08/20.
//  Copyright © 2020 Marsel Estefan Lie. All rights reserved.
//

import UIKit

class ListFoodCell: UITableViewCell {
    
    
    @IBOutlet weak var listFoodDesc: UILabel!
    @IBOutlet weak var listFoodName: UILabel!
    @IBOutlet weak var listFoodImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
