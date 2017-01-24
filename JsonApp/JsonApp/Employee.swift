//
//  Employee.swift
//  JsonApp
//
//  Created by CTS_DEP_AMM00217 on 08/12/16.
//  Copyright © 2016 CTS_DEP_AMM00217. All rights reserved.
//
import UIKit
import Foundation

class Employee{
    
    
    var EmpId:Int?;
    var EmpName:String?;
    var Empdesignation:String?
    var EmpAddress:String?;
    var IdArray:[Int]=[ ];
//    
//   init( id:Int,name:String,designation:String,address:String)
//    {
//        EmpId=id;
//        EmpName=name;
//        Empdesignation=designation;
//        EmpAddress=address;
//        IdArray.append(EmpId!);
//    }
//
//    func init1( id:Int!,name:String!,designation:String!,address:String!)->Void
//    {
//        EmpId=id;
//        EmpName=name;
//        Empdesignation=designation;
//        EmpAddress=address;
//        IdArray.append(EmpId!);
//    }

    func sortIdArray()->Array<Int>{
        
        var sortedArray:Array<Int>=[];
        sortedArray=IdArray.sort();
        
        return sortedArray;
        
    }
    
    func printText()->Void
  {
       print("EmpName:=\(EmpName!)");
        print("EmpId:=\(EmpId!)");
       print("EmpDesignation:=\(Empdesignation!)");
      IdArray.append(EmpId!);
    }
}