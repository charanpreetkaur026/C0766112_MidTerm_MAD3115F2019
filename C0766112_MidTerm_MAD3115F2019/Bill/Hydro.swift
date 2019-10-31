//
//  Hydro.swift
//  C0766112_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Hydro: Bill{
    
    var agency:String
    var unitsConsumed: Int
    init(billId: Int, billDate:String, billType:Bill.TypeofBills, billAmount: Float, agency:String, unitsConsumed: Int) {
        
        self.agency = agency
        self.unitsConsumed = unitsConsumed
        super.init(billId: billId, billDate: billDate, billType: billType
            , billAmount: billAmount)
        
    }
    override func display() {
        super.display()
        print("Agency Name: \(agency)")
        print("Units Consumed: \(unitsConsumed.concatUnits())")
    }
    
}
