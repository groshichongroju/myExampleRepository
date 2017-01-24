//
//  xibView.swift
//  custumUIview
//
//  Created by CTS_DEP_AMM00217 on 28/11/16.
//  Copyright © 2016 CTS_DEP_AMM00217. All rights reserved.
//

import UIKit
import Foundation

@IBDesignable class xibView: UIView {
    
    
    
    var view:UIView!
    
    var nibGroshi:String="xibView";
    

    //starts
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func loginButtonPressed(sender: AnyObject) {
      
     let message = username.text!+" "+password.text!
        print(" your cedential is : \(message)")
        let ob:ViewController=ViewController();
        ob.tonext();
       
        //        let ob:ViewController = ViewController();
//        ob.groshiAlert();
    }
       //ends
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    func setup(){
        
        view = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
        
    }
    func loadViewFromNib() -> UIView {
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName:nibGroshi, bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
