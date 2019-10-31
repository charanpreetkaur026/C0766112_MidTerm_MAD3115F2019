//
//  ViewController.swift
//  C0766112_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

    class LoginViewController: UIViewController {
        
        
        @IBOutlet weak var txtEmail: UITextField!
        
        @IBOutlet weak var txtPassword: UITextField!
        @IBOutlet weak var btnRememberMe: UISwitch!
        @IBOutlet weak var btnLogin: UIBarButtonItem!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
        }
        
  
        @IBAction func btnLogin(_ sender: UIBarButtonItem) {
   
            let email = txtEmail.text
            let pass = txtPassword.text
            
            if email.isValidEmail(){
            if email == "charanpreet@gmail.com"
            {
                if pass == "123"
                {
                    print("Login Success...")
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let customerListVC = storyboard.instantiateViewController(withIdentifier: "homeVC") as! CustomerListTableViewController
                    
                    self.navigationController?.pushViewController(customerListVC, animated: true)
              
                   customerListVC.Email = email

                    if(btnRememberMe.isOn)
                    {
                        print("Write Code to remember/store userId/Password")
                    }
                    else
                    {
                        print("Remove UserId/Password if previously remembered/stored")
                    }
                }
                else
                {
                    //Show Alert Here
                    let alert = UIAlertController(title: "Wrong Username Or Password", message: "change username or password", preferredStyle: .alert)

                    alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
                    alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: {action
                        in
                    print("Cancel clicked")

                    print("SHOW YOUR Alert Contoller with message User/Password Invalid")
                }))
            }
            
}
}
}
