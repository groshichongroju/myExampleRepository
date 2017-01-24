//
//  groshiViewController.swift
//  DelegateProtocolApp
//
//  Created by CTS_DEP_AMM00217 on 09/12/16.
//  Copyright © 2016 cognizant. All rights reserved.
//

import UIKit

class groshiViewController: UIViewController {

    @IBOutlet weak var thirdText: UITextField!
    var groshidelegate:GroshiProtocol?=nil
    
   // @IBOutlet weak var myTextInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func myclick(sender: AnyObject) {
        if (groshidelegate != nil){
            
            let a=thirdText.text
            groshidelegate?.didUserEnterData(a!);
            self.navigationController?.popViewControllerAnimated(true);
        }

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
