//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by UMUT GUDUL on 26.04.2021.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func logoutClicked(_ sender: Any) {
        do {
        try Auth.auth().signOut()
            performSegue(withIdentifier: "toViewController", sender: nil)
        
        } catch {
            print("error")
        }
    
}
}
