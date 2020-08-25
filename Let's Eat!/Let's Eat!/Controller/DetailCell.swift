//
//  DetailCell.swift
//  Let's Eat!
//
//  Created by Dionisius Ario Nugroho on 15/08/20.
//  Copyright © 2020 Marsel Estefan Lie. All rights reserved.
//

import UIKit

class DetailCell: UITableViewCell {

    
    @IBOutlet weak var detailName: UILabel!
    @IBOutlet weak var detailImg: UIImageView!
    @IBOutlet weak var detailDes: UILabel!
    @IBOutlet weak var detailOrigin: UILabel!
    @IBOutlet weak var detailPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
