//
//  CustumTableViewController.swift
//  LoadTable
//
//  Created by CTS_DEP_AMM00217 on 12/01/17.
//  Copyright © 2017 CTS_DEP_AMM00217. All rights reserved.
//

import UIKit
import Foundation

class CustumTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

   var mobile:[String]=["Asus","Sumsung","Iphone","Nokia","Mi","one plus", "micromax","karbon","lenovo","1","2","3","4","5","6", "7","8","9"];
    // var mobile:[String]=["Asus","Sumsung","Iphone","Nokia","Mi","one plus", "micromax","karbon","lenovo"]
    
    @IBOutlet var mytableview: UITableView!
    var data:[String] = [];
    
    var selectedRowCellRecord:[NSIndexPath]=[];
    var deselectedRowCellRecord:[NSIndexPath]=[];
    var startVisibleIndex:Int?
    var endVisibleIndex:Int?
    var totalSize=0
    
      var valueToPass:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalSize=mobile.count
        data=mobile
        self.mytableview.delegate=self
        self.mytableview.dataSource=self
        self.mytableview.sectionFooterHeight=0
        self.mytableview.sectionFooterHeight=0;
//       let cSelector : Selector = #selector(CustumTableViewController.swipe)
//       let swipeUp:UISwipeGestureRecognizer=UISwipeGestureRecognizer(target: self, action:cSelector)
//        swipeUp.numberOfTouchesRequired=1
//        swipeUp.direction=UISwipeGestureRecognizerDirection.Up
//        mytableview.addGestureRecognizer(swipeUp)
//        
//        let swipeDown:UISwipeGestureRecognizer=UISwipeGestureRecognizer(target:self,action:cSelector)
//        swipeDown.numberOfTouchesRequired=1
//        swipeDown.direction=UISwipeGestureRecognizerDirection.Down
//        mytableview.addGestureRecognizer(swipeDown)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        
        self.mytableview.sectionFooterHeight=0
        self.mytableview.sectionFooterHeight=0;
        self.mytableview.scrollEnabled=false
        self.mytableview.indexPathsForVisibleRows
        self.mytableview.allowsMultipleSelection=false

        
        

    }
    override func viewDidAppear(animated: Bool) {
        
        mytableview.contentInset=UIEdgeInsetsMake(0,0,20,0)
    }
//    func swipe(gesture:UISwipeGestureRecognizer)
//    {
//        switch gesture.direction{
//        case UISwipeGestureRecognizerDirection.Up:
//           // var k:Int=endVisibleIndex!
//            
//            for i in 0..<endVisibleIndex!{
//                if (endVisibleIndex!+i) < totalSize{
//                    
//                    data[i]=mobile[endVisibleIndex!+i]
//                    
//                }
//            }
//          mytableview.reloadData()
//          print("inside swipe Up,startindex=\(startVisibleIndex)")
//          print("inside swipe Up,endIndex=\(endVisibleIndex)")
//            
//        case UISwipeGestureRecognizerDirection.Down:
//            
//           // var k:Int=endVisibleIndex!
//            
//            for i in 0..<endVisibleIndex!{
//                if (endVisibleIndex!-i) > 0{
//                    
//                    data[i]=mobile[endVisibleIndex!-i]
//                    
//                }
//            }
//
//            mytableview.reloadData();
//            print("inside swipe down,satrtIndex=\(startVisibleIndex)")
//            print("inside swipe down,endIndex=\(endVisibleIndex)")
//
//        default:
//            print("default swipeview executed");
//        }
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCellWithIdentifier("cell") as! myTableViewCell
        cell.myLabel1.text = mobile[indexPath.row] as String
        cell.logoImage.image=UIImage(named: "logo")
        return cell;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
       // let cellRect = tableView.rectForRowAtIndexPath(indexPath)
        //let completelyVisible = tableView.bounds.contains(cellRect)
       
        if (isVisibleRowCell(indexPath) && (mytableview.indexPathsForVisibleRows?.contains(indexPath)) != nil){
        selectedRowCellRecord.append(indexPath)
            startVisibleIndex=mytableview.indexPathsForVisibleRows?.startIndex
            endVisibleIndex=mytableview.indexPathsForVisibleRows?.endIndex
        
        print("inside visiblecheck=\(isVisibleRowCell(indexPath))")
        //logic start.... for removing previous marking
        if deselectedRowCellRecord.count > 0 {
          print("inside loop...")
            for i in 0..<deselectedRowCellRecord.count-1{
                 let cell = tableView.cellForRowAtIndexPath(deselectedRowCellRecord[i]) as! myTableViewCell
                 cell.myImage.image=nil
                 print(deselectedRowCellRecord[i])
              
            }
           let a = deselectedRowCellRecord.removeLast()
            deselectedRowCellRecord.removeAll()
            deselectedRowCellRecord.append(a);
        }
        //logic end
            
        let cell = tableView.cellForRowAtIndexPath(indexPath) as! myTableViewCell
        cell.myImage.image=UIImage(named:"ok")
        valueToPass = cell.myLabel1.text
        performSegueWithIdentifier("custumGroshiSegue", sender: valueToPass);
        //count=count+1;
        print("inside select=\(indexPath.row)")
        print("d size= \(deselectedRowCellRecord.count)")

        }
        
    }


    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
       
        if isVisibleRowCell(indexPath){
        deselectedRowCellRecord.append(indexPath);
       // let ja:NSIndexPath=mytableview.indexPathsForVisibleRows as! NSIndexPath
        print("visible row=\(mytableview.indexPathsForVisibleRows?.description)")
       // mytableview.i
        print("inside diddeselect= \(indexPath.row)")
        
        let cell = tableView.cellForRowAtIndexPath(indexPath) as! myTableViewCell
        cell.myImage.image=UIImage(named:"cross")
        mytableview.reloadData()
        }
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        
        if (segue.identifier == "custumGroshiSegue") {
            // initialize new view controller and cast it as your view controller
            let destination1 = segue.destinationViewController as! SecondTableViewController
            destination1.myV=valueToPass;
            // your new view controller should have property that will store passed value
            
        }
    }
    func isVisibleRowCell(indexPath:NSIndexPath)->Bool{
        
        if ((mytableview.indexPathsForVisibleRows?.contains(indexPath)) != nil){
            return true
        }
        else
        {
            return false
        }
        
    }


}
