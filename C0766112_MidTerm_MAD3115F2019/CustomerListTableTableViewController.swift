//
//  CustomerListTableTableViewController.swift
//  C0766112_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet var customerTable: UITableView!
    
   // var customerDict = []
  // var customerArray = Array<Customer>()

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "usersCell")

        //cell?.textLabel?.text = self.customerArray[indexPath.row].fullName

        return cell!
    }
    

    
    public var Email: String?
    override func viewDidLoad() {
        super.viewDidLoad()
 print("This is Customer list Table View")
        
        
      
    }



}
