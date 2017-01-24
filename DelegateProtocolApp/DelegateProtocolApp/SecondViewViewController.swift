//
//  SecondViewViewController.swift
//  DelegateProtocolApp
//
//  Created by CTS_DEP_AMM00217 on 08/12/16.
//  Copyright © 2016 cognizant. All rights reserved.
//

import UIKit

protocol GroshiProtocol {
    
    func didUserEnterData(data:NSString);
  }
class SecondViewViewController: UIViewController{

    var mydelegate:GroshiProtocol?=nil
    
    @IBOutlet weak var myTextInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func callDelegateButton(sender: AnyObject) {
        if (mydelegate != nil){
            
            let msg:NSString!=myTextInput.text
            mydelegate?.didUserEnterData(msg);
            self.navigationController?.popViewControllerAnimated(true);
           // self.dismissViewControllerAnimated(true, completion: nil)
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
