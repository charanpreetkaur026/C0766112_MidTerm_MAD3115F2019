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
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (billdata?.billDictionary.count)!
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        let temp = obj.returnCustObject(custID: Int(indexPath.row+1))
    //   let activeCustomerBill = billdata.activeCustomer.billDictionary[indexPath.row]
        //let billDetails: String = ""
//        cell.textLabel?.text = "Bill ID : \(String(describing: activeCustomerBill?.billId)) \nBill Date : \(String(describing: activeCustomerBill?.billDate)) \nBill Type : \(String(describing: activeCustomerBill?.billType)) \nBill Total : \(String(describing: activeCustomerBill?.billAmount))"
        
        return cell
        
    }


   
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        let header = "Bill Details"
        return header
    }
    

    
    var billdata : Customer? = nil
   // @IBOutlet weak var bills: UILabel!
    
    @IBOutlet weak var lblCustomerDetail: UILabel!
    @IBOutlet weak var lblCustomerId: UILabel!
   
    @IBOutlet weak var lblCustomerEmail: UILabel!
    
    @IBOutlet weak var lblTotalAmount: UILabel!
    
    @IBOutlet weak var billTableView: UITableView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
//        customerTable.delegate=self
//        customerTable.dataSource=self
        //navigationItem.hidesBackButton=true
        lblCustomerId.text = billdata?.customerId.castString()
        lblCustomerDetail.text = billdata?.fullName
        lblCustomerEmail.text = billdata?.email
        lblTotalAmount.text = billdata?.totalBillAmount.currencyFormat()
        
    }
   

    
}
