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
        private var dictCustomers = [Int:Customer]()
        // Refered from Ankita
        var userDefault: UserDefaults!
        override func viewDidLoad() {
            super.viewDidLoad()
            let getData = Singleton.getInstance()
            getData.createCustomer()
             userDefault = UserDefaults.standard
            if let email = userDefault.value(forKey: "email"){
                txtEmail.text = email as? String
            }
            if let password = userDefault.value(forKey: "password"){
                txtPassword.text = password as? String
            }
        }
        // refered from moodle
        func readCustomersPlistFile() -> Bool{
            if let bundlePath = Bundle.main.path(forResource: "Customers", ofType: "plist")
            {
                let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
                let customerlist = dictionary!["Customers"] as! NSArray
                //                if NSMutableDictionary(contentsOfFile: plist!) != nil{
                for cust in customerlist
                {
                    let user = cust as! NSDictionary
                    let email = user["email"]! as! String
                    let pwd = user["password"]! as! String
                    if email == txtEmail.text! && pwd == txtPassword.text!
                    {   return true  }
                }
            }
            return false
        }
        @IBAction func login_BTN(_ sender: UIBarButtonItem){
            if readCustomersPlistFile(){
                if let email = txtEmail.text{
                    if !email.isEmpty{
                        if email.isValidEmail(){
                            if let password = txtPassword.text{
                                if verifyEmailPassword(email: email, password: password) {
                                    setValueRememberMe()
                                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                    let dashboardVC = storyboard.instantiateViewController(withIdentifier: "customerListVC") as! CustomerListTableViewController
                                    self.navigationController?.pushViewController(dashboardVC, animated: true)
                                }
                            }else{
                                showAlert(msg: "You have enter wrong credentials")
                            }
                        }else{
                            showAlert(msg: "Please enter password")
                        }
                    }else{
                        showAlert(msg: "Please enter valid email")
                    }
                }else{
                    showAlert(msg: "Please enter email")
                }
            }}
func verifyEmailPassword(email : String , password : String) -> Bool{
   let bundlePath = Bundle.main.path(forResource: "Customers", ofType: "plist")
    let dictionary = NSMutableDictionary(contentsOfFile: bundlePath!)
    let customerlist = dictionary!["Customers"] as! NSArray
    for cust in customerlist
    {
        let user = cust as! NSDictionary
        let email = user["email"]! as! String
        let pwd = user["password"]! as! String
        if email==txtEmail.text! && pwd==txtPassword.text!
        {
            return true
        }
    }
    return false
}
func setValueRememberMe()
{
    if btnRememberMe.isOn
    {
        self.userDefault.set(txtEmail.text, forKey: "userEmail")
        self.userDefault.set(txtPassword.text, forKey: "userPassword")
    }
    else
    {
        self.userDefault.set("", forKey: "Email")
        self.userDefault.set("", forKey: "Password")
    }
}
func showAlert(msg : String)
{
    let alertController = UIAlertController(title: "Logging in", message:
        msg, preferredStyle: .alert)
    alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
    self.present(alertController, animated: true, completion: nil)
}
        

        
                    
                    
                    


}
