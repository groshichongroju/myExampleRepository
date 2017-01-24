//
//  SecondTableViewController.swift
//  LoadTable
//
//  Created by CTS_DEP_AMM00217 on 23/11/16.
//  Copyright © 2016 CTS_DEP_AMM00217. All rights reserved.
//

import UIKit

class SecondTableViewController: UITableViewController {
    
//    var emp:[String:String]=["name":"groshi","email":"groshi@gmail.com","mobile":"1234567"];
//    var fruit:[String:String]=["name":"mango","tast":"little sweet","color":"yellow"];
//    var number:[String]=["one","two","three"];
//    var fruits:[String]=["mango","orange","papaya"];
//    var animal:[String]=["cat","dog","monkey","tiger","elephant","donkey","goat","chicken"];
//    var mobile:[String]=["Asus","Sumsung","Iphone","Nokia","Mi","one plus", "micromax","karbon","lenovo"];
    var str: String!="";
    var myV:String!="groshi";
   
    var number:[String]!
    var animal:[String]!
    var mobile:[String]!
    var fruits:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        str = myV;
        
        let data:DataClass=DataClass();//object creation and initialisation
        number = data.getNumArray();
        mobile = data.getmobileArray();
        fruits = data.getfruitsArray();
        animal = data.getanimalArray();
       //navigationController?.popViewControllerAnimated(true)
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
       
        if( str == "number")
        {
            return number.count;
        }
        else if(str=="fruits")
        {
            return fruits.count;
        }
        else if(str=="animal")
        {
            return animal.count;
        }
        else 
        {
            return mobile.count;
        }
    //        return 1;
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell2", forIndexPath: indexPath)
      
        // Configure the cell...
        
        if( str == "number")
        {
            cell.textLabel?.text=number[indexPath.row];
        }
        else if(str=="fruits")
        {
            cell.textLabel?.text=fruits[indexPath.row];
        }
        else if(str=="animal")
        {
           cell.textLabel?.text=animal[indexPath.row];
        }
        else
        {
            cell.textLabel?.text=mobile[indexPath.row];
        }

        return cell;
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let currentCell = tableView.cellForRowAtIndexPath(indexPath)! as UITableViewCell;
      //  currentCell.selectionStyle = UITableViewCellSelectionStyle.Blue
        
        currentCell.textLabel?.textColor=UIColor.blueColor()

    }
   override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let currentCell = tableView.cellForRowAtIndexPath(indexPath)! as UITableViewCell;
       // currentCell.selectionStyle = UITableViewCellSelectionStyle.Blue
        
        currentCell.textLabel?.textColor=UIColor.redColor()

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
