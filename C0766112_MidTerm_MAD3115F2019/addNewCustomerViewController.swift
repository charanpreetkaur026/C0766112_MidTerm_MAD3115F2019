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
            print("Customer Added")
            let sb1=UIStoryboard(name: "Main", bundle: nil)
            let customerListVC=sb1.instantiateViewController(withIdentifier: "customerListVC") as! CustomerListViewController
            navigationController?.pushViewController(customerListVC, animated: true)
    

}
}
