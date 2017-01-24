//
//  ViewController.swift
//  segmentApp
//
//  Created by CTS_DEP_AMM00217 on 03/01/17.
//  Copyright © 2017 cognizant. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var mytable: UITableView!
    let animal=["dog","human","ant","monkey","dongkey"];
    let bird=["cokoo","parrot","peaock","hen","bulbul"];
    let fruit=["banana","mango","pineapple","papaya","orange"];
    var common=[];
    @IBOutlet var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.mytable.backgroundColor=UIColor.whiteColor()
        let url = NSURL (string: "https://www.google.co.in")
        let requestObj = NSURLRequest(URL: url!)
        webview.loadRequest(requestObj)
        webview.scrollView
    }

    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var mytexlabel: UILabel!
   
    @IBAction func SegmentedButtonPressed(sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            mytexlabel.text = "Fruit selected";
            //self.view.backgroundColor=UIColor.greenColor()
            common = fruit
            self.mytable.reloadData()
        
        case 1:
            mytexlabel.text = "Animal Segment selected";
        
           // self.mytexlabel.textColor=UIColor.yellowColor()
           // self.view.backgroundColor=UIColor.brownColor()
            common=animal
            self.mytable.reloadData()
        case 2:
            mytexlabel.text="Bird selected"
            //mytexlabel.textColor=UIColor.whiteColor();
           // self.view.backgroundColor=UIColor.blueColor();
            common=bird
          //  self.mytable.backgroundColor=UIColor.cyanColor()
            self.mytable.reloadData()
        default:
            mytexlabel.text="nothing is selected"
            common=[]
            self.mytable.reloadData()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return common.count;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell=tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        //cell.detailTextLabel?.text=bird[indexPath.row];
        cell.textLabel?.text=common[indexPath.row] as? String;
        return cell;
    }


}

