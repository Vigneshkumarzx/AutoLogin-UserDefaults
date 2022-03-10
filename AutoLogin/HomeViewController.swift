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
        
        let loginViewController = storyboard?.instantiateViewController(withIdentifier: "ViewController")
        
        UserDefaults.standard.set(false, forKey: "ISUSERLOGGED")
        let mySceneDelegate = self.view.window!.windowScene!.delegate as! SceneDelegate
        mySceneDelegate.window?.rootViewController = UINavigationController(rootViewController: loginViewController!)
        mySceneDelegate.window?.makeKeyAndVisible()
        
    }
    
}
