//
//  AddNewCardViewController.swift
//  CardBag
//
//  Created by Admin on 26.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class AddNewCardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Добавить карту"
        // Do any additional setup after loading the view.
        let previous = UIBarButtonItem(image: UIImage(named: "IconClose"), style: .plain, target: self, action: #selector(prevPage))
        
        navigationItem.leftBarButtonItem = previous
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
