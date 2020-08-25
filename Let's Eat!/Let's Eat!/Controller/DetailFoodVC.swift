//
//  DetailFoodVC.swift
//  Let's Eat!
//
//  Created by Marsel Estefan Lie on 07/08/20.
//  Copyright © 2020 Marsel Estefan Lie. All rights reserved.
//

import UIKit

class DetailFoodVC: UIViewController {
    @IBOutlet weak var detailTableView: UITableView!
    
    var foodName: String?
    var foodDesc: String?
    var foodPrice: String?
    var foodOrigin: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.detailTableView.delegate = self
        self.detailTableView.dataSource = self
    }
}

extension DetailFoodVC:UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = detailTableView.dequeueReusableCell(withIdentifier: "DetailCell", for: indexPath) as! DetailCell
        cell.detailName.text = foodName
        cell.detailDes.text = foodDesc
        cell.detailPrice.text = foodPrice
        cell.detailOrigin.text = foodOrigin
        cell.detailImg.image = UIImage(named: foodName!)
        cell.detailImg.layer.cornerRadius = 5
        return cell
    }
}
