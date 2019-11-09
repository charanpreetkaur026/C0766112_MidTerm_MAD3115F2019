
import Foundation
class Singleton: NSObject
{
    private var customerDictionary  = [Int:Customer]()
    private static var obj = Singleton()
    private override init() {
    }
    internal static func getInstance() -> Singleton
    {
        return obj
    }
    func addNewCustomer(First_Name : String, Last_Name : String, email : String)
    {
        let c = customerDictionary.count + 1
        let temp = Customer(customerId: c, firstName: First_Name, lastName: Last_Name, email: email)
        self.AddCustomertoDict(customer: temp)
    }
    func returnCustObject(custID : Int) -> Customer?
    {
        for (k,v) in customerDictionary
        {
            if custID == k
            {
                return v
            }
        }
        return nil
    }
    func returnCount() -> Int
    {
        return customerDictionary.count
    }
    func createCustomer()
    {
      
        let cust1 = Customer(customerId: 1, firstName: "Charan", lastName: "Kaur", email: "charan@gmail.com ")
         AddCustomertoDict(customer: cust1)
        let cust2 = Customer(customerId: 2, firstName: "Komal", lastName: "kaur", email: "kaomal@gmail.com ")
         AddCustomertoDict(customer: cust2)
        let cust3 = Customer(customerId: 3, firstName: "Camy", lastName: "Sandhu", email: "camy@gmail.com ")
         AddCustomertoDict(customer: cust3)
        let cust4 = Customer(customerId: 4, firstName: "varinder", lastName: "kaur", email: "varinder@gmail.com ")
         AddCustomertoDict(customer: cust4)
        let cust5 = Customer(customerId: 5, firstName: "Simran", lastName: "singh", email: "simran@gmail.com ")
            AddCustomertoDict(customer: cust5)
        let bill1 = Mobile(billId: 101, billDate: "25-11-2010", billType: .Mobile, billAmount: 250.00, mobileManufacturer: "Samsung", plan: "Talk + Internet", mobileNum: 1231231231, internetUsed: 5, minutesUsed: 500)
        let bill2 = Internet(billId: 201, billDate: "11-11-2011", billType: .Mobile, billAmount: 200.0, providerName: "Rogers", internetUsed: Int(820.0))
        let bill3 = Hydro(billId: 301, billDate: "12-12-2012", billType: .Hydro, billAmount: 450.00, agency: "Tronto Hydro Services inc.", unitsConsumed: 120)
        
        
//        let cust1 = Customer(customerId: 1, firstName: "Charan", lastName: "kaur", email: "charan@gmail.com", bills:[bill1.billId: bill1 , bill2.billId: bill2])
//        let cust2 = Customer(customerId: 2, firstName: "Preet", lastName: "kaur", email: "preet@gmail.com", bills:[bill1.billId: bill1 , bill3.billId: bill3, bill2.billId: bill2])
//        let cust3 = Customer(customerId: 3, firstName: "Simran", lastName: "Singh", email: "simran@gmail.com", bills:[bill1.billId: bill1])
        AddCustomertoDict(customer: cust1)
        AddCustomertoDict(customer: cust2)
        AddCustomertoDict(customer: cust3)
 
        cust1.addBillToCustomer(b: bill3)
        cust1.addBillToCustomer(b: bill2)
        cust1.addBillToCustomer(b: bill1)
        cust2.addBillToCustomer(b: bill3)
        cust3.addBillToCustomer(b: bill3)
        cust2.addBillToCustomer(b: bill1)
        //print("cust: \(cust1.billDictionary.)")
    }
    func AddCustomertoDict(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.customerId)
    }
//    func printdata()
//    {
//        for i in customerDictionary.values
//        {
//            print(i.firstName)
//            print(i.customerId)
//            print(i.billDictionary.values)
//        }
//    }

}
