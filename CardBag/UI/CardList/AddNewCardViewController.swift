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
    }
/*
        navigationItem.title = "Добавить карту"
        let previous = UIBarButtonItem(image: UIImage(named: "IconClose"), style: .plain, target: self, action: #selector(prevPage))
        navigationItem.leftBarButtonItem = previous
    }

    @objc private func prevPage() {
        let prev = CardListViewController()
        let navigation = UINavigationController(rootViewController: prev)
        ///let closeButton = UIBarButtonItem(image: UIImage(named: "IconClose"), style: .plain, target: self, action: #selector(close))
        //prev.navigationItem.title = "Добавить карту"
        //prev.navigationItem.leftBarButtonItem = closeButton
        navigationController?.present(navigation, animated: true, completion: nil)
    }

    @objc private func close() {
        dismiss(animated: true, completion: nil)
    }
    
*/
    @IBAction func buttonTakePhoto(_ sender: Any) {
        let next = FrontSideCardViewController()
        navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func goCategoryTable(_ sender: Any) {
        let next = CategoryViewController()
        navigationController?.pushViewController(next, animated: true)
    }


}
