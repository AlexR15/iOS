//
//  FrontSideCardViewController.swift
//  CardBag
//
//  Created by Admin on 30.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class FrontSideCardViewController: UIViewController {

    @IBOutlet weak var labelCategoty: UILabel!
    @IBOutlet weak var labelDiscount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Спортмастер"
        navigationItem.backBarButtonItem?.title = ""
        labelCategoty.text = "Одежда и обувь"
        labelDiscount.text = "10%"
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonGoBackSideCard(_ sender: Any) {
        let next = BackSideCardViewController()
        navigationController?.pushViewController(next, animated: true)
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
