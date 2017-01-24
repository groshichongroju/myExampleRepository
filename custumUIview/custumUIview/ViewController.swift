//
//  ViewController.swift
//  custumUIview
//
//  Created by CTS_DEP_AMM00217 on 28/11/16.
//  Copyright © 2016 CTS_DEP_AMM00217. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func onClick(sender: AnyObject) {
        
        let storyboard:UIStoryboard=UIStoryboard(name:"Main", bundle: nil);
        let vc=storyboard.instantiateViewControllerWithIdentifier("groshiboard") as! groshiViewController
        self.presentViewController(vc, animated:true, completion: nil);
    }
    func tonext()->Void{
        let storyboard:UIStoryboard=UIStoryboard(name:"Main", bundle: nil);
        let vc=storyboard.instantiateViewControllerWithIdentifier("groshiboard") as! groshiViewController
        self.presentViewController(vc, animated:true, completion: nil);

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
    
    
    func groshiAlert()->Void{
        let alertView = UIAlertController(title: "You need to log in first", message: "To access the special features of the app you need to log in first.", preferredStyle: .Alert)
        alertView.addAction(UIAlertAction(title: "Login", style: .Default, handler: nil))
        alertView.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        self.presentViewController(alertView, animated: true, completion: nil)
//        let alert=UIAlertController(title:"groshiAlert", message: "alert message", preferredStyle: <#T##UIAlertControllerStyle#>);
//        alert.addAction(UIAlertAction(title: "ok", style: .Default, handler: nil));
//        self.presentViewController(alert, animated: true, completion: nil);
        
    }
}

