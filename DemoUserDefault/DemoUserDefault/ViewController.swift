//
//  ViewController.swift
//  DemoUserDefault
//
//  Created by Ronak Patel on 18/10/19.
//  Copyright © 2019 Ronak Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var userName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    


    @IBAction func loginButtonTapped(_ sender: Any) {
        UserDefaults.standard.set(true, forKey: "isLoggedIn")
        if userName.text == "test@test.com" && password.text == "test1234" {
            performSegue(withIdentifier: "showData", sender: nil)
        }
        else{
            print("Invalid credentials")
        }
    }
}

