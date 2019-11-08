//
//  BillListViewController.swift
//  C0766112_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class BillDetailsViewController:UIViewController, UITableViewDelegate, UITableViewDataSource {
    var obj = Singleton.getInstance()
    var billdata : Customer? = nil
    
    
    
    
    
    private func addNewBillButton()
    {
        let btnNewBill = UIBarButtonItem(title: "🆕", style: .done, target: self, action: #selector(BillDetailsViewController.addNewBill(sender:)))
        
        navigationItem.rightBarButtonItem = btnNewBill
    }
    @objc
    func addNewBill(sender: UIBarButtonItem)
    {
        
        let sb1=UIStoryboard(name: "Main", bundle: nil)
        let addCustomerVC=sb1.instantiateViewController(withIdentifier: "newBillVC") as! addNewBillViewController
        navigationController?.pushViewController(addCustomerVC, animated: true)
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (billdata?.billDictionary.count)!
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        //let temp = obj.returnCustObject(custID: Int(indexPath.row+1))
      //let activeCustomerBill = billdata.activeCustomer.billDictionary[indexPath.row]
        let activeCustomerBill = Customer.activeCustomer.billDictionary[indexPath.row]
        
        cell.textLabel?.text = "Bill ID : \(String(describing: activeCustomerBill?.billId)) \n Bill Date : \(String(describing: activeCustomerBill?.billDate)) \n Bill Type : \(String(describing: activeCustomerBill?.billType)) \n Bill Total : \(String(describing: activeCustomerBill?.billAmount))"
        
        return cell
        
    }


   
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        let header = "Bill Details"
        return header
    }
    

    
    
   // @IBOutlet weak var bills: UILabel!
    
    @IBOutlet weak var lblCustomerDetail: UILabel!
    @IBOutlet weak var lblCustomerId: UILabel!
   
    @IBOutlet weak var lblCustomerEmail: UILabel!
    
    @IBOutlet weak var lblTotalAmount: UILabel!
    
    @IBOutlet weak var billTableView: UITableView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        billTableView.delegate = self
        billTableView.dataSource = self
        addNewBillButton()
        lblCustomerId.text = billdata?.customerId.castString()
        lblCustomerDetail.text = billdata?.fullName
        lblCustomerEmail.text = billdata?.email
        lblTotalAmount.text = billdata?.totalBillAmount.currencyFormat()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        return billTableView.reloadData()
    }
   

    
}
