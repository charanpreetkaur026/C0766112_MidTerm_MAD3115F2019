//
//  Mobile.swift
//  C0766112_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Mobile:Bill{
    
    var mobileManufacturer: String
    var plan: String
    var mobileNum: Int
    var internetUsed: Int
    var minutesUsed: Int
    
    init(billId: Int, billDate: String , billType: billTypes, billAmount: Float, mobileManufacturer: String,plan: String, mobileNum: Int,internetUsed: Int, minutesUsed: Int) {
        
        self.mobileManufacturer = mobileManufacturer
        self.plan = plan
        self.mobileNum = mobileNum
        self.internetUsed = internetUsed
        self.minutesUsed = minutesUsed
        super.init(billId: billId, billDate:billDate, billType: billType, billAmount: billAmount)
    }
    
    
    
}
