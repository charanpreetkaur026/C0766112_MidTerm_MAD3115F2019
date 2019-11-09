
import UIKit
class addNewBillViewController: UIViewController {

    @IBOutlet weak var txtBillid: UITextField!
    @IBOutlet weak var txtBillDate: UITextField!
    @IBOutlet weak var txtBillType: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        addBillButton()
    }
    @IBOutlet weak var txtBillAmount: UITextField!
    var billDictionary = [Int: Bill]()
    @objc func addBill(sender: UIBarButtonItem)
    {
        let story=UIStoryboard(name: "Main", bundle: nil)
        let billDetailsVC=story.instantiateViewController(withIdentifier: "BillListVC") as! BillDetailsViewController
        navigationController?.pushViewController(billDetailsVC, animated: true)
        let billid = txtBillid.text
        let billDate = txtBillDate.text
        let billType = txtBillType.text
        let billAmount = txtBillAmount.text
    }
    private func addBillButton()
    {
        let btnAddBill=UIBarButtonItem(title: "Add", style: .done, target: self, action: #selector(addNewBillViewController.addBill(sender:)))
        navigationItem.rightBarButtonItem = btnAddBill
        let story=UIStoryboard(name: "Main", bundle: nil)
        
        let BillListVC=story.instantiateViewController(withIdentifier: "customerListVC") as! BillDetailsViewController
        navigationController?.pushViewController(BillListVC, animated: true)
        print(txtBillid)
    }
    
    
    
}
