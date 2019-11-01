//
//  Extension+String.swift
//  C0766112_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

extension String
{

    func  isValidEmail() -> Bool
    {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
/* referred from  https://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift
*/
    //changed as per requirement
    
    
    
    
    
}


