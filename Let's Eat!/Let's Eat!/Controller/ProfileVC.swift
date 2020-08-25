//
//  ProfileVC.swift
//  Let's Eat!
//
//  Created by Marsel Estefan Lie on 07/08/20.
//  Copyright © 2020 Marsel Estefan Lie. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var profilePicDetail: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = "Marsel Estefan Lie"
        titleLbl.text = "marselestefan98@gmail.com"
        profilePicDetail.layer.cornerRadius = profilePicDetail.frame.height/2
    }
    
    
    @IBAction func doneBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
