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
    
        let add = UIBarButtonItem(image: UIImage(named: "IconAdd"), style: .plain, target: self, action: #selector(nextPage))
        let previous = UIBarButtonItem(image: UIImage(named: "iconUser"), style: .plain, target: self, action: #selector(prevPage))
        
        
        navigationItem.leftBarButtonItem = previous
        navigationItem.rightBarButtonItem = add
        
        
    }

    @objc private func nextPage() {
        let next = AddNewCardViewController()
        navigationController?.pushViewController(next, animated: true)
    }
    
    @objc private func prevPage() {
        let prev = CardListViewController()
        let navigation = UINavigationController(rootViewController: prev)
        let closeButton = UIBarButtonItem(image: UIImage(named: "IconClose"), style: .plain, target: self, action: #selector(close))
        
        prev.navigationItem.title = "Добавить карту"
        prev.navigationItem.leftBarButtonItem = closeButton
        navigationController?.present(navigation, animated: true, completion: nil)
    }
    
    @objc private func close() {
        dismiss(animated: true, completion: nil)
    }

}

/*
class CardListViewController: UIViewController {

    @IBOutlet weak var changeTestButton: UIButton!
    @IBOutlet weak var sampleLabel: UILabel!
    
    private var labelUpdateCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeTestButton.setTitle("Обновить текст", for: .normal)
        updateSampleLabel()
    }

    // Mark - Приватные методы
    
    private func updateSampleLabel(){
        sampleLabel.text = "Кол-во обновлений: \(labelUpdateCount)"
        labelUpdateCount += 1
    }
    
    // Mark - Методы экшен
    
    @IBAction func onChangeTextButton(_ sender: Any) {
        updateSampleLabel()
    }
    
}
*/
