//
//  AuthVC.swift
//  BreakPointApp
//
//  Created by Boiko Artem on 03.12.17.
//  Copyright © 2017 Boiko Artem. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    @IBAction func signWithEmailBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    @IBAction func signWithFacebookBtnWasPressed(_ sender: Any) {
        
    }
    @IBAction func signWithGoogleBtnWasPressed(_ sender: Any) {
        
    }
    
}
