//
//  addNewCustomerViewController.swift
//  C0766112_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class addNewCustomerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        saveCustomerButton()
        // Do any additional setup after loading the view.
    }
        let obj = Singleton.getInstance()
        @IBOutlet weak var txtLastName: UITextField!
        @IBOutlet weak var txtFirstName: UITextField!
        @IBOutlet weak var txtEmail: UITextField!
        
        
        // @IBAction func btnsave(_ sender: UIBarButtonItem)
        private func saveCustomerButton()
        {
            let btnSave=UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(addNewCustomerViewController.saveCustomer(sender:)))
            
            navigationItem.rightBarButtonItem=btnSave
        }
        
        @objc
        func saveCustomer(sender: UIBarButtonItem)
        {
            print("Customer Added successfully")
            let story=UIStoryboard(name: "Main", bundle: nil)
            let customerListVC=story.instantiateViewController(withIdentifier: "customerListVC") as! CustomerListTableViewController
            navigationController?.pushViewController(customerListVC, animated: true)
    
            let firstName = txtFirstName.text
            let lastName = txtLastName.text
//            func  isValidEmail() -> Bool
//            {
//                let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//                let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//                return emailTest.evaluate(with: self)
//            }
            if (txtEmail.text?.isValidEmail())!
            {
                
                let email = txtEmail.text
                obj.addNewCustomer(First_Name: firstName!, Last_Name: lastName!, email: email!)
                
                let alert = UIAlertController(title: "Success", message: "Congrats! Customer added successfully", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                
                self.present(alert, animated: true)
            }
            else{
                
                let alert = UIAlertController(title: "INVALID EMAIL", message: "Please Enter a Valid E-mail Address", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                
                self.present(alert, animated: true)
                
            }
    }
}
