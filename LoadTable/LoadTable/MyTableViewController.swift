//
//  MyTableViewController.swift
//  LoadTable
//
//  Created by CTS_DEP_AMM00217 on 22/11/16.
//  Copyright © 2016 CTS_DEP_AMM00217. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
     var mobile:[String]=["Asus","Sumsung","Iphone","Nokia","Mi","one plus", "micromax","karbon","lenovo","1","2","3","4","5","6", "7","8","9"];
    var myarr:[String]!
    var refresh = UIRefreshControl()
        override func viewDidLoad() {
        super.viewDidLoad()
            let data:DataClass=DataClass();
            myarr = data.getdataArray();
            self.refresh.tintColor=UIColor.blueColor()
            self.refresh.addTarget(self, action:#selector(MyTableViewController.updateData), forControlEvents:UIControlEvents.ValueChanged)
            self.tableView.addSubview(refresh);
            // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    func updateData(){
        myarr=mobile
        tableView.reloadData()
        if myarr.count > 0{
            refresh.endRefreshing()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        self.clearsSelectionOnViewWillAppear = false;
        self.tableView.scrollEnabled=true
        self.tableView.allowsSelection = true
        
        
    }
  //var arr:[String]=["number","fruits","animal","mobile"];
  //var emp:[String:String]=["name":"groshi","email":"groshi@gmail.com","mobile":"1234567"];

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
    
        return myarr.count;
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("mycell", forIndexPath: indexPath)

        // Configure the cell...
       cell.textLabel?.text=myarr[indexPath.row];

        return cell;
    }
    var valueToPass:String!
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
//        let cell = tableView.dequeueReusableCellWithIdentifier("mycell", forIndexPath: indexPath)
//        cell.textLabel?.textColor=UIColor.redColor();
        
        // Get Cell Label
        let indexPath1 = tableView.indexPathForSelectedRow!
        let currentCell = tableView.cellForRowAtIndexPath(indexPath1)! as UITableViewCell;
        //currentCell.selectionStyle = UITableViewCellSelectionStyle.Blue
        currentCell.selectionStyle = UITableViewCellSelectionStyle.None
        //self.tableView.reloadRowsAtIndexPaths([indexPath1], withRowAnimation: UITableViewRowAnimation.None)
        //var hcount=indexPath.row

        if indexPath.row > tableView.indexPathsForVisibleRows?.count{
        
        }
        else{
            currentCell.textLabel?.textColor=UIColor.blueColor()
        }
        valueToPass = currentCell.textLabel?.text;
        performSegueWithIdentifier("mySegue", sender: valueToPass);
    }
   override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
    
          //  let indexPath = tableView.indexPathForSelectedRow!
           let currentCell = tableView.cellForRowAtIndexPath(indexPath)! as UITableViewCell;
   
        currentCell.textLabel?.textColor=UIColor.redColor()
                 //  currentCell.textLabel?.textColor=UIColor.blackColor()
    

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        
        if (segue.identifier == "mySegue") {
            // initialize new view controller and cast it as your view controller
            let destination1 = segue.destinationViewController as! SecondTableViewController
            destination1.myV=valueToPass;
            // your new view controller should have property that will store passed value
        
        }
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

//    
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }

}
