//
//  MyTableViewController.swift
//  JsonApp
//
//  Created by CTS_DEP_AMM00217 on 05/12/16.
//  Copyright © 2016 CTS_DEP_AMM00217. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    var colorDictionary:NSDictionary!;
    var nameArr:[String]=[];
    var valueArr:[String]=[];
   // var me=["one","two","three","one","two","three","one","two","three","one","two","three","one","two","three","one","two","three","one","two","three"];
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myobj=Groshijson();
        colorDictionary=myobj.groshijson();
        let value=colorDictionary.allValues;
        toGroshiArray(value)
        let edgeInsets = UIEdgeInsetsMake(20, 0, 0, 0)
        self.tableView.contentInset = edgeInsets
        }

   /* override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }*/

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
        return nameArr.count;
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("mycell", forIndexPath: indexPath)
        print(nameArr);
         cell.textLabel?.text=self.nameArr[indexPath.row];
      //  cell.detailTextLabel?.text=self.valueArr[indexPath.row];
          //cell.textLabel?.text=me[indexPath.row];
        return cell;
    }
    func toGroshiArray(value:AnyObject)
    {
        print(value[0].count)
        for i in 0..<value[0].count{
            let a=value[0][i].valueForKey("colorName") as! String;
            let v=value[0][i].valueForKey("hexValue") as! String;
            nameArr.append(a);
            valueArr.append(v);
            print(a);
 
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
