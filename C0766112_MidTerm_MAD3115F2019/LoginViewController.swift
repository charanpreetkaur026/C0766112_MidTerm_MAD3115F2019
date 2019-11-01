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
        
        // static var customerClciked = Customer()
        private var dictCustomers = [Int:Customer]()
        // Refered from Ankita
        let userDefault = UserDefaults.standard
        override func viewDidLoad() {
            super.viewDidLoad()
            
        }
        
        @IBAction func login_BTN(_ sender: UIBarButtonItem) {
            if let email = txtEmail.text{
                if !email.isEmpty{
                    
                    if email.isValidEmail(){
                        if let password = txtPassword.text{
                            if !password.isEmpty{
                                    if verifyEmailPassword(email: email, password: password) {
                                        setValueRememberMe()
                                        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                        let dashboardVC = storyboard.instantiateViewController(withIdentifier: "homeVC") as! CustomerListTableViewController
                                        
                                        self.navigationController?.pushViewController(dashboardVC, animated: true)
                                       
                                    }else{
                                        showAlert(msg: "You have enter wrong credentials")
                                    }
               
                                }
                                
                            }else{
                                showAlert(msg: "Please enter password")
                            }
                        }
                    }
                    else{
                        showAlert(msg: "Please enter valid email")
                    }
                }else{
                    showAlert(msg: "Please enter useremail")
                }
            }
            
     


func verifyEmailPassword(email : String , password : String) -> Bool{
    
    for cust in dictCustomers
    {
        if (cust.email == email && cust.password == password) {
            return true
        }
    }
    return false
}
func setValueRememberMe()  {
    if btnRememberMe.isOn
    {
        userDefault.set(self.txtEmail.text, forKey: "userEmail")
        userDefault.set(self.txtPassword.text, forKey: "userPassword")
    }else{
        userDefault.set("", forKey: "Email")
        userDefault.set("", forKey: "Password")
    }
}
func showAlert(msg : String)
{
    let alertController = UIAlertController(title: "CustomerList", message:
        msg, preferredStyle: .alert)
    alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
    
    self.present(alertController, animated: true, completion: nil)
    //self.present(alertController, animated: true, completion: nil)
}
        
//        @IBAction func btnLogin(_ sender: UIBarButtonItem) {
//
//            let email = txtEmail.text
//            let pass = txtPassword.text
//
//            if (email?.isValidEmail() ?? nil)!
//            {
//            if email == "charanpreet@gmail.com"
//            {
//                if pass == "123"
//                {
//                    print("Login Success...")
//                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                    let customerListVC = storyboard.instantiateViewController(withIdentifier: "homeVC") as! CustomerListTableViewController
//
//                    self.navigationController?.pushViewController(customerListVC, animated: true)
//
//                   customerListVC.Email = email
//
//                    if(btnRememberMe.isOn)
//                    {
//                        print("Write Code to remember/store userId/Password")
//                    }
//                    else
//                    {
//                        print("Remove UserId/Password if previously remembered/stored")
//                    }
//                }
//                else
//                {
//                    //Show Alert Here
//                    let alert = UIAlertController(title: "Wrong Username Or Password", message: "change username or password", preferredStyle: .alert)
//
//                    alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
//                    alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: {action
//                        in
//                    print("Cancel clicked")
//
//                    print("SHOW YOUR Alert Contoller with message User/Password Invalid")
//                }))
//            }
//
//}
//}
            // refered from moodle
            func readCustomersPlistFile() -> Bool{

                if let bundlePath = Bundle.main.path(forResource: "Customers", ofType: "plist") {
                    let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
                    let customerlist = dictionary!["Customers"] as! NSArray
//                if NSMutableDictionary(contentsOfFile: plist!) != nil{
            
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
                    
                    
                }
                return false
            }
                    
                    
                    
//                    if let customers = dict["customers"] as? [[String:Any]]
//                    {
//                        for cust in customers {
//                            let customer = cust as NSDictionary
//                            let id = customer["customerID"] as! Int
//                            let firstName = customer["customerFirstName"] as! String
//                            let lastName = customer["customerLastName"] as! String
//                            let email = customer["email"] as! String
//                            let password = customer["password"] as! String
//
////                            self.dictCustomers.append(Customer(customerId: id, firstName: firstName, lastName: lastName, emailId: email, password: password))
//                        }


        


}
