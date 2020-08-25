//
//  ViewController.swift
//  Let's Eat!
//
//  Created by Marsel Estefan Lie on 07/08/20.
//  Copyright © 2020 Marsel Estefan Lie. All rights reserved.
//

import UIKit

class ListFoodVC: UIViewController {
    
    @IBOutlet weak var profilePicBtn: UIButton!
    @IBOutlet weak var listTable: UITableView!
    
    let lists = [List(listName: FoodName.pecel, listImage: FoodName.pecel, listDesc: FoodDesc.pecelDesc, listOrigin: FoodOrigin.pecel, listPrice: FoodPrice.pecel),
                 List(listName: FoodName.karedok, listImage: FoodName.karedok, listDesc: FoodDesc.karedokDesc, listOrigin: FoodOrigin.karedok, listPrice: FoodPrice.karedok),
                 List(listName: FoodName.bakso, listImage: FoodName.bakso, listDesc: FoodDesc.baksoDesc, listOrigin: FoodOrigin.bakso, listPrice: FoodPrice.bakso),
                 List(listName: FoodName.gudeg, listImage: FoodName.gudeg, listDesc: FoodDesc.gudegDesc, listOrigin: FoodOrigin.gudeg, listPrice: FoodPrice.gudeg),
                 List(listName: FoodName.martabak, listImage: FoodName.martabak, listDesc: FoodDesc.martabakDesc, listOrigin: FoodOrigin.martabak, listPrice: FoodPrice.martabak),
                 List(listName: FoodName.nasgor, listImage: FoodName.nasgor, listDesc: FoodDesc.nasgorDesc, listOrigin: FoodOrigin.nasgor, listPrice: FoodPrice.nasgor),
                 List(listName: FoodName.pempek, listImage: FoodName.pempek, listDesc: FoodDesc.pempekDesc, listOrigin: FoodOrigin.pempek, listPrice: FoodPrice.pempek),
                 List(listName: FoodName.sate, listImage: FoodName.sate, listDesc: FoodDesc.sateDesc, listOrigin: FoodOrigin.sate, listPrice: FoodPrice.sate),
                 List(listName: FoodName.seblak, listImage: FoodName.seblak, listDesc: FoodDesc.seblakDesc, listOrigin: FoodOrigin.seblak, listPrice: FoodPrice.seblak),
                 List(listName: FoodName.rendang, listImage: FoodName.rendang, listDesc: FoodDesc.rendangDesc, listOrigin: FoodOrigin.rendang, listPrice: FoodPrice.rendang)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        profilePicBtn.imageView?.layer.cornerRadius = (profilePicBtn.imageView?.frame.height)!/2
        
        self.listTable.delegate = self
        self.listTable.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let index = listTable.indexPathForSelectedRow
        if let destination = segue.destination as? DetailFoodVC {
            destination.foodName = lists[index!.section].listName
            destination.foodDesc = lists[index!.section].listDesc
            destination.foodOrigin = lists[index!.section].listOrigin
            destination.foodPrice = lists[index!.section].listPrice
        }
    }
}

extension ListFoodVC: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return lists.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listTable.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as! ListFoodCell
        
        cell.selectionStyle = .none
        
        let list = lists[indexPath.section]
        
        cell.listFoodName.text = list.listName
        cell.listFoodImage.image = UIImage(named: list.listImage!)
        cell.listFoodDesc.text = list.listDesc
        
        cell.listFoodImage.layer.cornerRadius = 5
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.cornerRadius = 10
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOpacity = 0.1
        cell.layer.shadowOffset = .init(width: 1, height: 2)
        cell.layer.shadowRadius = 2
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let cellSpacingHeight: CGFloat = 10
        
        return cellSpacingHeight
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let list = lists[indexPath.section]
        
        performSegue(withIdentifier: "toDetailPage", sender: list)
    }
    
    
}



