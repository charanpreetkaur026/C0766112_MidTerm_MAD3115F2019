//
//  Singleton.swift
//  C0766112_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Singleton: NSObject
{
    private var customerDictionary  = [Int:Customer]()
    
    private static var obj = Singleton()
    
    
    private override init() {
        
    }
    
    internal static func getInstance() -> Singleton
    {
        return obj
    }
    
    func addNewCustomer(First_Name : String, Last_Name : String, email : String)
    {
        let c = customerDictionary.count + 1
        
        let temp = Customer(customerId: c, firstName: First_Name, lastName: Last_Name, emailId: email)
        self.AddCustomer(customer: temp)
    }
    
    func returnCustObject(custID : Int) -> Customer?
    {
        for (k,v) in customerDictionary
        {
            if custID == k
            {
                return v
            }
        }
        return nil
        
    }
    
    func returnCount() -> Int
    {
        return customerDictionary.count
    }
    
    func createCust()
    {
        let c1 = Customer(customerId: 1, firstName: "Ankita", lastName: "Jain", emailId: "ankita@gmail.com ")
        AddCustomer(customer: c1)
        let c2 = Customer(customerId: 2, firstName: "kamal", lastName: "kaur", emailId: "kamal@gmail.com ")
        AddCustomer(customer: c2)
        let c3 = Customer(customerId: 3, firstName: "Karan", lastName: "Kumar", emailId: "karan321@gmail.com ")
        AddCustomer(customer: c3)
        let c4 = Customer(customerId: 4, firstName: "Sandeep", lastName: "Singh", emailId: "sandeep@gmail.com ")
        AddCustomer(customer: c4)
        
    }
    
    
    
    
    func AddCustomer(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.customerId)
    }
    func printdata()
    {
        for i in customerDictionary.values
        {
            print(i.firstName)
        }
    }
}
