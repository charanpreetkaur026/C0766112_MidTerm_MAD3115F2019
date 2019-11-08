//
//  extension+Int.swift
//  C0766112_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
extension Int{
    func concatUnits()->String
    {
        return "\(self) Units"
    }
    func conactGB() ->String
    {
        return " \(self) GB"
    }
    func concatMin() -> String
    {
        return " \(self) Minutes"
    }
    func castString() -> String
    {
        return String(self)
    }
    
    
}
