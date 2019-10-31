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
        
        
        @IBAction func btnLogin(_ sender: UIBarButtonItem) {
            //        let email = txtEmail.text!
            //        let pass = txtPassword.text
            //
            //        if email == "charanpreet@gmail.com"
            //        {
            //            if pass == "123"
            //            {
//            /                print("Signed In ")
            //            }
            //        }
            //        else
            //        {
            //            print("username or password is incorrect")
            //        }
            //
            //        let sb = UIStoryboard(name: "Main", bundle: nil)
            //        let homeVC = sb.instantiateViewController(withIdentifier: "homeVC") as! ViewController
            //        HomeVC.email = email
            //        //        self.present(homeVC, animated: true, completion: nil)
            //        navigationController?.pushViewController(homeVC, animated: true)
            
            
            
            
            let email = txtEmail.text
            let pass = txtPassword.text
            
            if email == "charanpreet@gmail.com"
            {
                if pass == "123"
                {
                    print("Login Success...")
                    let sb = UIStoryboard(name: "Main", bundle: nil)
                    let homeVC = sb.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
                    homeVC.Email = email
                    self.navigationController?.pushViewController(homeVC, animated: true)
                    //self.present(homeVC, animated: true)
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
                    print("SHOW YOUR Alert Contoller with message User/Password Invalid")
                }
            }
            
            override func viewDidLoad() {
                super.viewDidLoad()
                
                // Do any additional setup after loading the view.
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
