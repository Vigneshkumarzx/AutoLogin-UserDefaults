//
//  HomeViewController.swift
//  AutoLogin
//
//  Created by vignesh kumar c on 09/03/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func logOutTapped(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "ISUSERLOGGED")
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
