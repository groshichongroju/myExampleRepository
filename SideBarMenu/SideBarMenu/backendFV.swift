//
//  backendFV.swift
//  SideBarMenu
//
//  Created by CTS_DEP_AMM00217 on 30/11/16.
//  Copyright © 2016 CTS_DEP_AMM00217. All rights reserved.
//

import Foundation

class backendFV:UITableViewController{
    
    let arr:[String]=["home","news","images","setting","logout"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.tableView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    
        return 1;
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return arr.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell=tableView.dequeueReusableCellWithIdentifier("mycell", forIndexPath: indexPath);
        cell.textLabel?.text=arr[indexPath.row];
        return cell;
       
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let myindex:NSIndexPath!;
        myindex=self.tableView.indexPathForSelectedRow!;
        let dv=segue.destinationViewController as! ViewController;
        dv.receivingData = arr[myindex.row];
    }
}