
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
    init(customerId: Int, firstName: String, lastName: String ,  email: String, bills :[Int:Bill]) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.billDictionary = bills
        
    }
    func addBillToCustomer(b:Bill)
    {
        billDictionary.updateValue(b, forKey: b.billId)
        print("BillDictionary:  \(billDictionary)")
    }
    func calcTotalBillAmount() -> Float
    {
        totalBillAmount = 0
        for i in billDictionary.values
        {
            totalBillAmount = totalBillAmount + i.billAmount
        }
        return Float(totalBillAmount)
    }
}
