//
//  ViewController.swift
//  SideBarMenu
//
//  Created by CTS_DEP_AMM00217 on 30/11/16.
//  Copyright © 2016 CTS_DEP_AMM00217. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var openSideBar: UIBarButtonItem!
   
    @IBOutlet weak var mylabel: UILabel!
    var receivingData:String!
    var str:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        str=receivingData;
        // Do any additional setup after loading the view, typically from a nib.
        openSideBar.target=self.revealViewController();
        openSideBar.action=Selector("revealToggle:");
        //add gesture recogniser
        //self.view.gestureRecognizers(self.revealViewController().panGestureRecognizer());
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer());
        mylabel.text=str;
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

