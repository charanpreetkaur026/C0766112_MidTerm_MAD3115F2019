//
//  Bill.swift
//  C0766112_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
 class Bill
{
    
     var billId: Int
     var billDate = String()
     var billType: billTypes
     enum billTypes{
        case Internet
        case Hydro
        case Mobile
    }
    var billAmount: Float
    
    
     init(billId: Int, billDate: String, billType: billTypes, billAmount: Float) {
        self.billId = billId
        self.billDate = billDate
        self.billAmount  = billAmount
        self.billType = billType
    }
    
    
    
}
