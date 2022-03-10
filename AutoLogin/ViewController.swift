//
//  ViewController.swift
//  AutoLogin
//
//  Created by vignesh kumar c on 09/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usenameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if UserDefaults.standard.bool(forKey: "ISUSERLOGGED") == true {
//
//            let homeVc = self.storyboard?.instantiateViewController(withIdentifier: "HomeVc") as! HomeViewController
//            self.navigationController?.pushViewController(homeVc, animated: false)
//        }
    }

    @IBAction func loginTapped(_ sender: Any) {
        
        if usenameField.text == "vicky" && passwordField.text == "1234" {
            UserDefaults.standard.set(true, forKey: "ISUSERLOGGED")
            
            let loginViewController = storyboard?.instantiateViewController(withIdentifier: "HomeVc")
           
            let mySceneDelegate = self.view.window!.windowScene!.delegate as! SceneDelegate
            mySceneDelegate.window?.rootViewController = UINavigationController(rootViewController: loginViewController!)
            mySceneDelegate.window?.makeKeyAndVisible()
            
        }
        
    }
    
}

