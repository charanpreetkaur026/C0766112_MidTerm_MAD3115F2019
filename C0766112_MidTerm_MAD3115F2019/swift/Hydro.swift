//
//  Hydro.swift
//  C0766112_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
 class Hydro: Bill{
    
    var agency:String
    var unitsConsumed: Int
    init(billId: Int, billDate:String, billType:Bill.billTypes, billAmount: Float, agency:String, unitsConsumed: Int) {
    
        self.agency = agency
        self.unitsConsumed = unitsConsumed
    super.init(billId: billId, billDate: billDate, billType: billType
        , billAmount: billAmount)
        
    }
    
    
}
