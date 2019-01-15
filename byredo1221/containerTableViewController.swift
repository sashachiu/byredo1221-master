//
//  containerTableViewController.swift
//  byredo1221
//
//  Created by sashachiu on 2018/12/21.
//  Copyright © 2018 sashachiu. All rights reserved.
//

import UIKit

class containerTableViewController: UITableViewController {

    @IBOutlet var item1TextField: UITextField!
    @IBOutlet var item2TextField: UITextField!
    @IBOutlet var item3TextField: UITextField!
    @IBOutlet var item4TextField: UITextField!
    @IBOutlet var item5TextField: UITextField!
    
    var item1:Int=0
    var item2:Int=0
    var item3:Int=0
    var item4:Int=0
    var item5:Int=0
    let price1:Int=4800
    let price2:Int=4800
    let price3:Int=1600
    let price4:Int=2600
    let price5:Int=1980

    
    @IBOutlet var item1Stepper: UIStepper!
    @IBOutlet var item2Stepper: UIStepper!
    @IBOutlet var item3Stepper: UIStepper!
    @IBOutlet var item4Stepper: UIStepper!
    @IBOutlet var item5Stepper: UIStepper!
    
    @IBAction func item1Stepper(_ sender: UIStepper) {
        item1 = (Int(sender.value))
        item1TextField.text = "\(item1)"
        addall()
    }
    
    @IBAction func item2Stepper(_ sender: UIStepper) {
        item2 = (Int(sender.value))
        item2TextField.text = "\(item2)"
        addall()
    }
    
    @IBAction func item3Stepper(_ sender: UIStepper) {
        item3 = (Int(sender.value))
        item3TextField.text = "\(item3)"
        addall()
    }
    
    @IBAction func item4Stepper(_ sender: UIStepper) {
        item4 = (Int(sender.value))
        item4TextField.text = "\(item4)"
        addall()
    }
    
    @IBAction func item5Stepper(_ sender: UIStepper) {
        item5 = (Int(sender.value))
        item5TextField.text = "\(item5)"
        addall()
    }
    
    func addall() {
        let sum = Int(item1Stepper.value) * price1 + Int(item2Stepper.value) * price2 + Int(item3Stepper.value) * price3 + Int(item4Stepper.value) * price4 + Int(item5Stepper.value) * price5
        TotalpriceTextField.text = "\(sum)"
    }
    
    @IBOutlet var TotalpriceTextField: UITextField!
    @IBAction func TotalpriceTextField(_ sender: UITextField) {
    }
    
    
    @IBAction func DeleteButton(_ sender: UIButton) {
        item1TextField.text = "0"
        item2TextField.text = "0"
        item3TextField.text = "0"
        item4TextField.text = "0"
        item5TextField.text = "0"
        TotalpriceTextField.text = "0"
        item1Stepper.value = 0
        item2Stepper.value = 0
        item3Stepper.value = 0
        item4Stepper.value = 0
        item5Stepper.value = 0
        
    }
    
   
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
