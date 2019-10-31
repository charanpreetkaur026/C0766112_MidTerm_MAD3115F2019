//
//  Mobile.swift
//  C0766112_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Mobile:Bill{
    
    var mobileManufacturer: String
    var plan: String
    var mobileNum: Int
    var internetUsed: Int
    var minutesUsed: Int
    
    init(billId: Int, billDate: String , billType: TypeofBills, billAmount: Float, mobileManufacturer: String,plan: String, mobileNum: Int,internetUsed: Int, minutesUsed: Int) {
        
        self.mobileManufacturer = mobileManufacturer
        self.plan = plan
        self.mobileNum = mobileNum
        self.internetUsed = internetUsed
        self.minutesUsed = minutesUsed
        super.init(billId: billId, billDate:billDate, billType: billType, billAmount: billAmount)
    }
    override func display() {
        super.display()
        print("Manufactuer Name : \(mobileManufacturer)")
        print("Plan Name: \(plan)")
        print("Mobile Number: \(mobileNum)")
        print("Internet Used: \(internetUsed.conactGB())")
        print("Minutes Used: \(minutesUsed.concatMin())")
        
    }
    
    
}
