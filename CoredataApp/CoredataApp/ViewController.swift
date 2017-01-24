//
//  ViewController.swift
//  CoredataApp
//
//  Created by CTS_DEP_AMM00217 on 13/12/16.
//  Copyright © 2016 cognizant. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    let pobj:CoreDataOperation=CoreDataOperation();
    var data1 = [NSManagedObject]();
    var name:String="groshi"
    var pwd:String="12345"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveButton(sender: AnyObject) {
        pobj.saveTo(name, pwd:pwd)
    }
    @IBAction func retrieveButton(sender: AnyObject) {
      data1 = pobj.RetriveFrom()
        
        print("from view controller")
        print(data1[0].valueForKey("username") as! String)
        print(data1[0].valueForKey("password") as! String)
    }
    
        
    }


