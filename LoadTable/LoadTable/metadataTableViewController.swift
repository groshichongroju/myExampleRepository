//
//  metadataTableViewController.swift
//  LoadTable
//
//  Created by CTS_DEP_AMM00217 on 24/11/16.
//  Copyright © 2016 CTS_DEP_AMM00217. All rights reserved.
//

import UIKit

class metadataTableViewController: UITableViewController {

    var miy:[String:[String]]!
    override func viewDidLoad() {
        super.viewDidLoad()
        let data:DataClass=DataClass();
        miy = data.getdataDictionary();
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
        return miy.count;
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let Section=Array(self.miy.keys);
        return Section[section];
        
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       // let mykey=Array(self.miy.keys);
        let myvalue=Array(self.miy.values);
        
        return myvalue[section].count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell3", forIndexPath: indexPath)

        // Configure the cell...
        ///let mykey=Array(self.miy.keys);
        let myvalue=Array(self.miy.values);
       
        cell.textLabel?.text = myvalue[indexPath.section][indexPath.row];
      print("groshi size:\(myvalue)");
//       cell.detailTextLabel?.text=mykey[indexPath.row];
//        cell.detailTextLabel?.text=myvalue[indexPath.section][indexPath.row];

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
