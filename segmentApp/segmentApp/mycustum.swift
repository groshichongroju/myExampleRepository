//
//  mycustum.swift
//  segmentApp
//
//  Created by CTS_DEP_AMM00217 on 03/01/17.
//  Copyright © 2017 cognizant. All rights reserved.
//

import UIKit

class mycustum: UIView{

    var custumView: UIView!
    var custumNib:String="mycustom"
    
    override init(frame: CGRect) {
        super.init(frame:frame)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup();
    }
    func setup(){
        custumView=loadViewFromNib()
        custumView.frame = bounds;
        custumView.autoresizingMask=[UIViewAutoresizing.FlexibleWidth,UIViewAutoresizing.FlexibleHeight];
        addSubview(custumView);
    }
    func loadViewFromNib() -> UIView {
      
        let mybundle=NSBundle(forClass: self.dynamicType)
        let nib=UINib(nibName:custumNib, bundle:mybundle)
        let view=nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }
}
