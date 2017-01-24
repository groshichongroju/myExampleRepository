//
//  ViewController.swift
//  Gesture2App
//
//  Created by CTS_DEP_AMM00217 on 05/01/17.
//  Copyright © 2017 cognizant. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var mylabel: UILabel!
    let me=["delete","setting","edit","menu"];
    
    @IBOutlet var mytable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //let aSelector : Selector = "start:"
        let tapGesture = UITapGestureRecognizer(target: self, action:#selector(ViewController.start))
        tapGesture.numberOfTapsRequired = 1
        view.addGestureRecognizer(tapGesture)
        
        let bSelector : Selector = #selector(ViewController.stop)
        let doubleTapGesture = UITapGestureRecognizer(target: self, action: bSelector)
        doubleTapGesture.numberOfTapsRequired = 2
        view.addGestureRecognizer(doubleTapGesture)
        tapGesture.requireGestureRecognizerToFail(doubleTapGesture)
        
       //swipegesture recognizer
       let cSelector : Selector = #selector(ViewController.swipe)
        let leftSwipe = UISwipeGestureRecognizer(target: self, action:cSelector)
        leftSwipe.numberOfTouchesRequired=1
        leftSwipe.direction = UISwipeGestureRecognizerDirection.Left
        view.addGestureRecognizer(leftSwipe)
      
        let rightSwipe = UISwipeGestureRecognizer(target: self, action:cSelector)
        rightSwipe.numberOfTouchesRequired=1
        rightSwipe.direction = UISwipeGestureRecognizerDirection.Right
        view.addGestureRecognizer(rightSwipe)
        
        let upSwipe = UISwipeGestureRecognizer(target: self, action: cSelector)
        upSwipe.numberOfTouchesRequired=1
        upSwipe.direction = UISwipeGestureRecognizerDirection.Up
        view.addGestureRecognizer(upSwipe)

        let downSwipe = UISwipeGestureRecognizer(target: self, action: cSelector)
        downSwipe.numberOfTouchesRequired=1
        downSwipe.direction = UISwipeGestureRecognizerDirection.Down
        view.addGestureRecognizer(downSwipe)
        //end swipe gesturerecognize

       
       
       let longP=UILongPressGestureRecognizer(target:self, action: #selector(ViewController.long) )
       longP.minimumPressDuration=2
        view.addGestureRecognizer(longP)
        
         mylabel.text="null"
        mytable.hidden=true
    }
    func start(sender:AnyObject){
        mylabel.text="single tab detected"
        
    }
    func stop(){
        mylabel.text="double tab detected"

    }
    func swipe(gesture:UISwipeGestureRecognizer)
    {
        //var caseme = gesture.direction
        switch gesture.direction {
        case UISwipeGestureRecognizerDirection.Up:
            
            mylabel.text="swipe Up detected"
        case UISwipeGestureRecognizerDirection.Down:
            
            mylabel.text="swipe down detected"
        case UISwipeGestureRecognizerDirection.Left:
            
            mylabel.text="swipe Left detected"
        case UISwipeGestureRecognizerDirection.Right:
            
            mylabel.text="swipe right detected"

        default:
            mylabel.text="swipe default detected"

        }
    

    }
    func long(){
//            let alertController = UIAlertController(title: nil, message:
//                "Long-Press Gesture Detected", preferredStyle: UIAlertControllerStyle.Alert)
//            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
//            
//            self.presentViewController(alertController, animated: true, completion: nil)
        mytable.hidden=false
        mytable.reloadData();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return me.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCellWithIdentifier("cell")
        cell?.textLabel?.text=me[indexPath.row];
        return cell!
    
    
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
        mytable.hidden=true
        mytable.reloadData()
    }
    func practice()
    {
        
        
        
    }


}












