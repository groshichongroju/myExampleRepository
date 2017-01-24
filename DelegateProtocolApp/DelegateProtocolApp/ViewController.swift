//
//  ViewController.swift
//  DelegateProtocolApp
//
//  Created by CTS_DEP_AMM00217 on 08/12/16.
//  Copyright © 2016 cognizant. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GroshiProtocol {

    @IBOutlet weak var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
   
    
    func didUserEnterData(data: NSString) {
        
     myLabel.text = data as String
        viewDidLoad();
    //myLabel.text =    
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier=="groshiSegueId"{
            
            let destViewC:SecondViewViewController=segue.destinationViewController as! SecondViewViewController
            destViewC.mydelegate=self;

        }
        if segue.identifier=="groshi"{
            
            let thirdViewC:groshiViewController = segue.destinationViewController as! groshiViewController
           thirdViewC.groshidelegate=self;
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

