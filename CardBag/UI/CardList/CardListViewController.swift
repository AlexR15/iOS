//
//  CardListViewController.swift
//  CardBag
//
//  Created by Admin on 25.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit
class CardListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "CARDbag"
    
        let add = UIBarButtonItem(image: UIImage(named: "IconAdd"), style: .plain, target: self, action: #selector(addCard))
        let user = UIBarButtonItem(image: UIImage(named: "IconUser"), style: .plain, target: self, action: #selector(userLogin))
        
        navigationItem.rightBarButtonItems = [add, user]
    }

    @objc private func addCard() {
        let next = AddNewCardViewController()
        let navigation = UINavigationController(rootViewController: next)
        let closeButton = UIBarButtonItem(image: UIImage(named:"IconClose"), style: .plain, target: self, action: #selector(close))
        
        next.navigationItem.title = "Добавить карту"
        next.navigationItem.leftBarButtonItem = closeButton
        
        //navigationController?.pushViewController(next, animated: true)
        navigationController?.present(navigation, animated: true, completion: nil)
    }
    
    @objc private func userLogin() {
        
    }
    
    @objc private func close() {
        dismiss(animated: true, completion: nil)
    }
}
