//
//  MyTableViewController.swift
//  ToDoListApp
//
//  Created by Shubha Manjunath on 10/19/15.
//  Copyright © 2015 Shubha Manjunath. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var toDoItems = ["Amsterdam", "Barcelona", "Berlin", "Budapest", "Dublin", "Edinburgh", "Florence", "Istanbul", "Lisbon", "London", "Madrid", "Monaco", "Paris", "Prague", "Rome", "St.Petersburg", "Stockholm", "Tuscany", "Venice", "Vienna"]

    var toDoImages = ["Amsterdam", "Barcelona", "Berlin", "Budapest", "Dublin", "Edinburgh", "Florence", "Istanbul", "Lisbon", "London", "Madrid", "Monaco", "Paris", "Prague", "Rome", "St.Petersburg", "Stockholm", "Tuscany", "Venice", "Vienna"]

    
    var checkState = [false, false, false, false]
    var passName : String!

 
    /*
    let cell = sender as? WorkoutCell
    let indexPath = tableView.indexPathForCell(cell!)
    let nvc = segue.destinationViewController as? UINavigationController
    if let tmp = workouts[indexPath!.row] as? Workout{
    let dvc = nvc?.topViewController as! DetailViewController
    dvc.workout = tmp



*/
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
         if (segue.identifier == "showDetail") {
            let cell = sender as? MyTableViewCell
            let indexPath = tableView.indexPathForCell(cell!)
            let tvc = segue.destinationViewController as? DetailViewController
            print(toDoItems[indexPath!.row])
            tvc?.infoFromMyTableView = toDoItems[indexPath!.row]
            
    
               /* let msgAlert = UIAlertView(title: "The Selected Task", message: "test", delegate: nil, cancelButtonTitle: "OK")
                msgAlert.show()
                */
               
                }
            }
            


    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.        
        
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDoItems.count
    }

 
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "MyTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MyTableViewCell

        // Configure the cell...
        cell.cellItemName.text! = toDoItems[indexPath.row]
        cell.cellImage?.image = UIImage(named: toDoImages[indexPath.row])
        //cell.cellItemType.text! = toDoItems[indexPath.row]
        
        return cell
    }
    
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
        let selectedItem = toDoItems[indexPath.row]
        print("\(indexPath.row)")
        
        print("\(toDoItems[indexPath.row])")
        passName = toDoItems[indexPath.row]
        print(passName)
        
        let msgAlert = UIAlertView(title: "The Selected Task", message: selectedItem, delegate: nil, cancelButtonTitle: "OK")
        msgAlert.show()
        
        if(checkState[indexPath.row] == true){
            self.tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = .None
            checkState[indexPath.row] = false
        }else{
            self.tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = .Checkmark
            checkState[indexPath.row] = true
            
            self.tableView.deselectRowAtIndexPath(indexPath, animated: false)
            
        }
    }

  
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
 


    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            toDoItems.removeAtIndex(indexPath.row)
            toDoImages.removeAtIndex(indexPath.row)
            
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }


    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
