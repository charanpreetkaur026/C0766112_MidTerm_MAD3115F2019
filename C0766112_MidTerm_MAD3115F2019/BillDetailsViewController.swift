import UIKit
class BillDetailsViewController:UIViewController, UITableViewDelegate, UITableViewDataSource {
    var obj = Singleton.getInstance()
    var billdata : Customer?
    @IBOutlet weak var lblCustomerDetail: UILabel!
    @IBOutlet weak var lblCustomerId: UILabel!
    @IBOutlet weak var lblCustomerEmail: UILabel!
    @IBOutlet weak var lblTotalAmount: UILabel!
    @IBOutlet weak var billTableView: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.billTableView.delegate = self
        self.billTableView.dataSource = self
        addNewBillButton()
        lblCustomerId.text = billdata?.customerId.castString()
        lblCustomerDetail.text = billdata?.fullName
        lblCustomerEmail.text = billdata?.email
        lblTotalAmount.text = billdata?.totalBillAmount.currencyFormat()
    }
    override func viewWillAppear(_ animated: Bool) {
        return billTableView.reloadData()
    }
   private func addNewBillButton()
   {
       let btnNewBill = UIBarButtonItem(title: "🆕", style: .done, target: self, action: #selector(BillDetailsViewController.addNewBill(sender:)))
       navigationItem.rightBarButtonItem = btnNewBill
   }
   @objc func addNewBill(sender: UIBarButtonItem)
   {
       let sb1=UIStoryboard(name: "Main", bundle: nil)
       let addCustomerVC=sb1.instantiateViewController(withIdentifier: "newBillVC") as! addNewBillViewController
       navigationController?.pushViewController(addCustomerVC, animated: true)
   }
   func numberOfSections(in tableView: UITableView) -> Int {
       return 1
   }
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

    return (billdata?.billDictionary.count)!
   }
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   
       let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
      let activeCustomerBill = billdata!.billDictionary[indexPath.row + 1]
    let typeDetail = ""
//    if activeCustomerBill?.billType == Bill.billTypes.Mobile{
//            cell.textLabel?.numberOfLines = 12
//            let mobileBill = activeCustomerBill as! Mobile
//            typeDetail = "\nBill Type : Mobile \nManufacturer Name : \(mobileBill.mobileManufacturer) \nPlan Name : \(mobileBill.plan) \nMobile Number : \(mobileBill.mobileNum) \nInternet used : \(mobileBill.internetUsed.conactGB()) \nMinutes Used : \(mobileBill.minutesUsed.concatMin()) "
//        } else {
//        if activeCustomerBill?.billType == Bill.billTypes.Hydro{
//                cell.textLabel?.numberOfLines = 12
//                let hydroBill = activeCustomerBill as! Hydro
//                typeDetail = "\nBill Type : Hydro \nAgency Name : \(hydroBill.agency) \nUnit Consumed : \(hydroBill.unitsConsumed.concatUnits())"
//            } else {
//            if activeCustomerBill?.billType == Bill.billTypes.Internet{
//                    cell.textLabel?.numberOfLines = 12
//                    let internetBill = activeCustomerBill as! Internet
//                    typeDetail = "\nBill Type : Internet \nProvider Name : \(internetBill.providerName) \nInternet Used : \(internetBill.internetUsed.conactGB())"
//                }
//            }
//    }
    cell.textLabel?.text = "Bill ID : \(String(describing: activeCustomerBill!.billId)) \n Bill Date : \(String(describing: activeCustomerBill?.billDate)) \n Bill Type : \( activeCustomerBill!.billType) \n Bill Total : \(activeCustomerBill!.billAmount)\n \(typeDetail)"
       return cell
   }
    
   func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
   {
       let header = "Bill Details"
       return header
   }

    

    
}

