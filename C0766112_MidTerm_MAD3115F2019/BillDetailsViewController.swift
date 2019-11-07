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
    override func viewDidLoad() {
        super.viewDidLoad()
        lblCustomerDetail.text = billdata?.fullName
       // billsTable.delegate=self
        //billsTable.dataSource=self
        
        // Do any additional setup after loading the view.
    }
   

    
}
