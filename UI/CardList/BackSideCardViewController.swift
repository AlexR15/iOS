//
//  BackSideCardViewController.swift
//  CardBag
//
//  Created by Admin on 30.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class BackSideCardViewController: UIViewController {

    @IBOutlet weak var labelCategory: UILabel!
    
    @IBOutlet weak var labelDiscount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Спортмастер"
        labelCategory.text = "Одежда и обувь"
        labelDiscount.text = "10%"
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonSaveCard(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
