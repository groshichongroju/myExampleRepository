//
//  ViewController.swift
//  ReactiveApp
//
//  Created by CTS_DEP_AMM00217 on 10/01/17.
//  Copyright © 2017 cognizant. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var mButton: UIButton!
    @IBOutlet var mytext: UITextField!
    var count = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        mytext.delegate=self
        self.mButton.enabled=false
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    
    @IBAction func addButtonPressed(sender: AnyObject) {
        
        let alert=UIAlertController(title: "Button Pressed", message:"You have pressed on button", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title:"ok", style: .Default, handler: nil))
        presentViewController(alert, animated:true, completion: nil)
        print("button click")
    }

  //  text field delegate
    func textFieldDidBeginEditing(textField: UITextField) {
        self.mButton.enabled=false
        let getText=textField.text!
        if getText == ""{
            self.mButton.enabled = false
            print("button disable inside begin")
            print(getText)
        }
        else
        {
            self.mButton.enabled = true
            //self.viewDidLoad()
             print(textField.text)
            print("button enable inside begin")
            
        }

        
    }
    func textFieldDidEndEditing(textField: UITextField) {
        
        let getText=textField.text!
        if getText == ""{
            self.mButton.enabled = false
            print("button disable inside end")
            print(getText)

        }
        else
        {
            self.mButton.enabled = true
            //self.viewDidLoad()
            print(textField.text)
            print("button enable inside end")
            
        }

    
    }
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        myCheck()
        return true
    }
     func myCheck()
     {
        let getText=mytext.text!
        // var count=0;
        if getText == ""{
            self.mButton.enabled = false
            print("button disable inside change")
            print(getText)
        }
        else
        {
            self.mButton.enabled = true
            //self.viewDidLoad()
            print(getText)
            print("button enable inside change")
        }

    }
    
    
    
//    func textFieldDidBeginEditing(textField: UITextField) {
//    print("TextField did begin editing method called")
//    }
//    func textFieldDidEndEditing(textField: UITextField) {
//        print("TextField did end editing method called")
//    }
//    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
//        print("TextField should begin editing method called")
//        return true;
//    }
//    func textFieldShouldClear(textField: UITextField) -> Bool {
//        print("TextField should clear method called")
//        return true;
//    }
//    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
//        print("TextField should snd editing method called")
//        return true;
//    }
//    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
//        print("While entering the characters this method gets called")
//        return true;
//    }
//    func textFieldShouldReturn(textField: UITextField) -> Bool {
//        print("TextField should return method called")
//        textField.resignFirstResponder();
//        return true;
//    }
//    
    
    
    
    
    
    
    
    
    
    
    
    
}

