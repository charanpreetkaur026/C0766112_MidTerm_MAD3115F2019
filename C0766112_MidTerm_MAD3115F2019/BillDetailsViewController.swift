//
//  BillListViewController.swift
//  C0766112_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class BillDetailsViewController:UIViewController {

    //@IBOutlet weak var billsTable: UIViewController!

    
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
        navigationItem.hidesBackButton=true
        lblCustomerId.text = billdata?.customerId.castString()
        lblCustomerDetail.text = billdata?.fullName
        lblCustomerEmail.text = billdata?.email
        lblTotalAmount.text = billdata?.totalBillAmount.currencyFormat()
        
        
    
    }
   

    
}
