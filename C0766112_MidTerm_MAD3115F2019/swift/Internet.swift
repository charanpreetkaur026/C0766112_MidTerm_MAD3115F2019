//
//  Internet.swift
//  C0766112_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Internet: Bill{
    
      var providerName: String
      var internetUsed: Int
     init(billId: Int, billDate: String, billType: billTypes, billAmount: Float, providerName: String,internetUsed: Int )
    {
        
    
        self.providerName = providerName
        self.internetUsed = internetUsed
        super.init(billId: billId, billDate: billDate, billType: billType, billAmount: billAmount)
    }
    
    
    
}
