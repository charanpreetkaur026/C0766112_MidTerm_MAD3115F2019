//
//  Customer.swift
//  C0766112_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Customer{
    var customerId: Int
    var firstName: String
    var lastName: String
    var fullName: String
    {
        get{  return "\(firstName) \(lastName)"  }
    }
    var email: String
    var totalBillAmount: Float = 0.0
    static var activeCustomer = Customer()
    var billDictionary = [Int:Bill]()
     //var arrayBill : [Bill]
//    var TotalAmountToPay: Float
//    {
//        var TotalAmount: Float = 0.0
//        for bill in billDictionary//arrayBill
//        {
//            TotalAmount = TotalAmount + bill.totalBillAmount
//        }
//        return TotalAmount
//    }
    init(){
        self.customerId = Int()
        self.firstName = String()
        self.lastName = String()
        self.email = String()
//        self.arrayBill = Array()
    }
    init(customerId: Int, firstName: String, lastName: String ,  email: String) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        
    }
    func addBillToCustomer(b:Bill){
        billDictionary.updateValue(b, forKey: b.billId)
        print("BillDictionary:  \(billDictionary)")
    }
    func calcTotalBillAmount() -> Float
    {
        totalBillAmount = 0
        for i in billDictionary.values
        {
            totalBillAmount += i.billAmount
        }
        return Float(totalBillAmount)
    }
}
