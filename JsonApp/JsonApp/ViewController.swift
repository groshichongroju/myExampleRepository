//
//  ViewController.swift
//  JsonApp
//
//  Created by CTS_DEP_AMM00217 on 05/12/16.
//  Copyright © 2016 CTS_DEP_AMM00217. All rights reserved.
//
import UIKit
import Foundation
class ViewController: UIViewController {

   // var kobject:AnyObject!;
    
    //var colorDictionary:NSArray!;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      // let myobj=Groshijson();
//        var EmpId:Int?;
//        var EmpName:String?;
//        var Empdesignation:String?
//        var EmpAddress:String?;
        let myobj=Employee();
            myobj.EmpId=123;
            myobj.EmpName="Groshi";
            myobj.Empdesignation="PA";
            myobj.EmpAddress="BIPL kolkata";
     //   MyObjectArray.arrayByAddingObject(myobj);
        myobj.printText();
        let myobj1=Employee();
            myobj1.EmpName="Chongroju";
            myobj1.EmpId=120;
            myobj1.Empdesignation="PT";
            myobj1.EmpAddress="TCPL kolkata";
        myobj1.printText()
     //    MyObjectArray.arrayByAddingObject(myobj1);
        let myobj2=Employee();
        myobj2.EmpName="Rahul";
        myobj2.EmpId=122;
        myobj2.Empdesignation="SA";
        myobj2.EmpAddress="Technocomplex kolkata";
        myobj2.printText();
      //   MyObjectArray.arrayByAddingObject(myobj2);
        
        
//        obj.init1(125,name: "Groshi",designation: "PA",address: "BIPL Kolkata");
//        obj.init1(124,name: "chongroju",designation: "PA",address: "BIPL Kolkata");
//        obj.init1(121,name: "Groshi",designation: "PA",address: "BIPL Kolkata");
//        obj.init1(123,name: "Groshi",designation: "PA",address: "BIPL Kolkata");
//        obj.init1(122,name: "Groshi",designation: "PA",address: "BIPL Kolkata");
//        let obj3=Employee(id:123,name:"Groshi",designation:"PA",address:"BIPL Kolkata");
//        let obj4=Employee(id:123,name:"Groshi",designation:"PA",address:"BIPL Kolkata");
//        let obj5=Employee(id:123,name:"Groshi",designation:"PA",address:"BIPL Kolkata");
//        let obj=Employee(id:123,name:"Groshi",designation:"PA",address:"BIPL Kolkata");
        
        var QR1=[Employee]();
        QR1.append(myobj);
        QR1.append(myobj1);
        QR1.append(myobj2);
        print(QR1[0].EmpName!);
     //-----------------------------
        let myObjectDictionary = ["1":myobj,"2":myobj1,"3":myobj2];
        //let key=myObjectDictionary.indexForKey("1")
        print("........dictionary..........")
        let a=[];
        print(myObjectDictionary["1"]?.EmpName!);
        for i in 0..<myObjectDictionary.count{
           //            var b=myObjectDictionary[i].EmpId
        }
        //----------------------------------------
        let MyObjectArray = [myobj,myobj1,myobj2];
        
        
       //let sortedArray = MyObjectArray.sort({})
     let sortedArray = MyObjectArray.sort{ $0.EmpId < $1.EmpId }
         print(sortedArray[0].EmpName!);
        
       //  obj.init1(123,"Groshi","PA","BIPL Kolkata");
//         let obj2=Employee(id:123,name:"Groshi",designation:"PA",address:"BIPL Kolkata");
//         let obj3=Employee(id:123,name:"Groshi",designation:"PA",address:"BIPL Kolkata");
//         let obj4=Employee(id:123,name:"Groshi",designation:"PA",address:"BIPL Kolkata");
//         let obj5=Employee(id:123,name:"Groshi",designation:"PA",address:"BIPL Kolkata");
//         let obj=Employee(id:123,name:"Groshi",designation:"PA",address:"BIPL Kolkata");
//        
       // let kobject = myobj.doRequestGet();
     //  myobj.groshijson1();
     // colorDictionary = myobj.groshijson1();
      //  print("view contolerr...kobject....")
     //print(colorDictionary);
    // colorDictionary=myobj.groshijson();
     //   print("yahoooooooooooooooooooooo......................\n");
       // print(colorDictionary.allValues);

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}


