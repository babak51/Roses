//
//  RosesTableViewController.swift
//  Roses
//
//  Created by Mohammad Amiraslani on 10/18/17.
//  Copyright © 2017 Babak. All rights reserved.
//

import UIKit

class RosesTableViewController: UITableViewController {
//    let roseNames = ["Double Delight", "Gypsy", "John F. Kennedy", "Joseph's Coat", "Oklahoma", "Queen Elizabeth", "Scentimental"]
//
//    let roseImages = ["doubleDelight.png", "gypsy.png", "johnFKennedy.png", "josephsCoat.png", "oklahoma.png", "queenElizabeth.png", "scentimental.png"]
//
//    let roseColors = ["red and white colors", "a beautiful shade of red color", "white color with red dots", "red, white, and yellow colors", "dark red color", "pink color", "white with paterns of red color"]
//
//    let roseTypes = ["Hybrid Tea", "Hybrid Tea", "Hybrid Tea", "Climbing Rose", "Hybrid Tea", "Hybrid Tea", "Hybrid Tea"]
//
//    // need to change this array
//    let roseInfo = ["-Double Delight-", "-Gypsy-", "-John F. Kennedy-", "-Joseph's Coat-", "-Oklahoma-", "-Queen Elizabeth-", "-Scentimental-"]
//
//    var roseIsChecked = Array(repeating: false, count: 7)
    var roses: [Rose] = [Rose(name: "Double Delight", color: "red and white colors", type: "Hybrid Tea", roseInfo: "-Double Delight-", roseIsChecked: false, image: "doubleDelight.png"),
                         Rose(name: "Gypsy", color: "a beautiful shade of red color", type: "Hybrid Tea", roseInfo: "-Gypsy-", roseIsChecked: false, image: "gypsy.png"),
                         Rose(name: "John F. Kennedy", color: "white color with red dots", type: "Hybrid Tea", roseInfo: "-John F. Kennedy-", roseIsChecked: false, image: "johnFKennedy.png"),
                         Rose(name: "Joseph's Coat", color: "red, white, and yellow colors", type: "Climbing Rose", roseInfo: "-Joseph's Coat-", roseIsChecked: false, image: "josephsCoat.png"),
                         Rose(name: "Oklahoma", color: "dark red color", type: "Hybrid Tea", roseInfo: "-Oklahoma-", roseIsChecked: false, image: "oklahoma.png"),
                         Rose(name: "Queen Elizabeth", color: "pink color", type: "Hybrid Tea", roseInfo: "-Queen Elizabeth-", roseIsChecked: false, image: "queenElizabeth.png"),
                         Rose(name: "Scentimental", color: "white with paterns of red color", type: "Hybrid Tea", roseInfo: "-Scentimental-", roseIsChecked: false, image: "scentimental.png")]
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return roses.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RoseTableViewCell

        // Configure the cell...

        cell.nameLabel.text = roses[indexPath.row].name
        cell.thumbnailImageView.image = UIImage(named: roses[indexPath.row].image)
        
        // The Circular Images:
        cell.thumbnailImageView.layer.cornerRadius = 40.0
        cell.thumbnailImageView.clipsToBounds = true
        
        // Colors:
        cell.colorLabel.text = roses[indexPath.row].color
        cell.typeLabel.text = roses[indexPath.row].type
        return cell
    }
 

//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
//        // Create an option menu as an action sheet
//        let optionMenu = UIAlertController(title: nil, message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
//
//        // Add actions to the menu
//        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
//        optionMenu.addAction(cancelAction)
//
//        // Add Info action
//        let infoActionHandler = {
//            (action: UIAlertAction!) -> Void in
//            let alertMessage = UIAlertController(title: self.roseNames[indexPath.row], message: self.roseInfo[indexPath.row], preferredStyle: UIAlertControllerStyle.alert)
//            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//            self.present(alertMessage, animated: true, completion: nil)
//        }
//        
//        let infoAction = UIAlertAction(title: "More about \(roseNames[indexPath.row])", style: .default, handler: infoActionHandler)
//        optionMenu.addAction(infoAction)
//
//        // Check-in action
//
//        let checkInAction = UIAlertAction(title: roseIsChecked[indexPath.row] ? "Remove Bookmark" : "Bookmark this rose", style: .default, handler:
//        {
//            (action: UIAlertAction!) -> Void in
//            let cell = tableView.cellForRow(at: indexPath)
//            self.roseIsChecked[indexPath.row] = !self.roseIsChecked[indexPath.row]
//            cell?.accessoryType = self.roseIsChecked[indexPath.row] ? .checkmark : .none
//        })
//        optionMenu.addAction(checkInAction)
//
//        // Display the menu
//        present(optionMenu, animated: true, completion: nil)
//
//        // deselect the row:
//        tableView.deselectRow(at: indexPath, animated: false)
//
//
//    }
//
    
    
    
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "showRoseDetail" {
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as!RosesDetailViewController
                destinationController.roseImage = roses[indexPath.row].image
            }
        }
    }
    

}
