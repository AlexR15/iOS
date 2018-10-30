//
//  CategoryViewController.swift
//  CardBag
//
//  Created by Admin on 30.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = category[indexPath.row]
        return cell
    }
    

    let category: [String] = ["Одежда и обувь",
         "Супермаркеты",
         "Красота",
         "Автомобиль"]
    
    @IBOutlet weak var tableCategory: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableCategory.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
       
        //tableCategory.delegate = self
        tableCategory.dataSource = self
    }
}
