//
//  xmlTableViewController.swift
//  segmentApp
//
//  Created by CTS_DEP_AMM00217 on 04/01/17.
//  Copyright © 2017 cognizant. All rights reserved.
//

import UIKit

class xmlTableViewController: UITableViewController, NSXMLParserDelegate {
    
  let data=["one","two","three","four","five","six","seven"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.beginParsing()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //xmlparser begin by groshi
    var parser = NSXMLParser();
    var posts = NSMutableArray();
    var elements = NSMutableDictionary();
    var element = NSString();
    var title1 = NSMutableString();
    var date = NSMutableString();
    func beginParsing()
    {
        posts = [];
        parser = NSXMLParser(contentsOfURL:(NSURL(string:"http://images.apple.com/main/rss/hotnews/hotnews.rss"))!)!
        parser.delegate = self;
        parser.parse();
      //  tbData!.reloadData();
    }
    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String])
      {
        element = elementName;
        
        if (elementName as NSString).isEqualToString("item")
        {
            elements = NSMutableDictionary();
            elements = [:];
            title1 = NSMutableString();
            title1 = "";
            date = NSMutableString();
            date = "";
        }
    }
    func parser(parser: NSXMLParser, foundCharacters string: String) {
        if element.isEqualToString("title")
        {
            title1.appendString(string)
        }
        else if element.isEqualToString("pubDate")
        {
            date.appendString(string)
        }
    }
    func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        if (elementName as NSString).isEqualToString("item")
        {
            if !title1.isEqual(nil)
            {
                elements.setObject(title1, forKey: "title")
            }
            if !date.isEqual(nil)
            {
                elements.setObject(date, forKey: "date")
            }
            posts.addObject(elements)
            print(posts)
            
        }
    }
        //xmlparser end by groshi

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return posts.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellGroshi", forIndexPath: indexPath)

        // Configure the cell...
//        cell.detailTextLabel?.text=""
//        cell.textLabel?.text=data[indexPath.row];
        cell.textLabel!.text = posts.objectAtIndex(indexPath.row).valueForKey("title") as? String
        cell.detailTextLabel!.text = posts.objectAtIndex(indexPath.row).valueForKey("date") as? String;
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
