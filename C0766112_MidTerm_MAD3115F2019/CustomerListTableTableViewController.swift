//
//  CustomerListTableTableViewController.swift
//  C0766112_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  // adding buttons
    private func addLogoutButton()
    {
        let btnLogout=UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(CustomerListTableViewController.logout(sender:)))
        
        navigationItem.leftBarButtonItem=btnLogout
    }
    private func addNewCustomerButton()
    {
        let btnLogout=UIBarButtonItem(title: "+", style: .done, target: self, action: #selector(CustomerListTableViewController.addNewCustomer(sender:)))
        
        navigationItem.rightBarButtonItem=btnLogout
    }
    
    // navigating through buttons
    
    @objc
    func logout(sender: UIBarButtonItem)
    {
        print("logout successfully")
        navigationController?.popViewController(animated: true)
    }
    @objc
    func addNewCustomer(sender: UIBarButtonItem)
    {
        print("Customer Added Successfully")
        let sb1=UIStoryboard(name: "Main", bundle: nil)
        let addCustomerVC=sb1.instantiateViewController(withIdentifier: "addCustomerVC") as! addNewCustomerViewController
        navigationController?.pushViewController(addCustomerVC, animated: true)
        
    }
    
    @IBOutlet var customerTable: UITableView!
    
   // var customerDict = []
  // var customerArray = Array<Customer>()
var obj = Singleton.getInstance()
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return obj.returnCount()
        
    }

   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
         let temp = obj.returnCustObject(custID: Int(indexPath.row+1))
        let cell = tableView.dequeueReusableCell(withIdentifier: "customerCell")
        cell?.textLabel?.text = temp?.fullName
        return cell!
        //cell?.textLabel?.text = self.customerArray[indexPath.row].fullName
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Customers List"
    }
    override func viewWillAppear(_ animated: Bool) {
        customerTable.reloadData()
        
    }
    
//    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        let sb = UIStoryboard(name: "Main", bundle: nil)
//        let billListVC = sb.instantiateViewController(withIdentifier: "BillListVC") as? BillListViewController
//        billListVC?.billdata = obj.returnCustObject(custID: indexPath.row + 1)
//        
//        navigationController?.pushViewController(billListVC!, animated: true)
//    }
//    private func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let x = obj.returnCustObject(custID: Int(indexPath.row+1))
//        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
//        cell.textLabel?.text = x?.fullName
//        return cell
//    }

    
    public var Email: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // aa
        customerTable.delegate=self
        customerTable.dataSource=self
        navigationItem.hidesBackButton=true
        addLogoutButton()
        addNewCustomerButton()
 //print("This is Customer list Table View")
        }



}







    
    
    
    
    
    

