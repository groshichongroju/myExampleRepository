//
//  Groshijson.swift
//  JsonApp
//
//  Created by CTS_DEP_AMM00217 on 05/12/16.
//  Copyright © 2016 CTS_DEP_AMM00217. All rights reserved.
//

import UIKit
import Foundation
import NetworkExtension

class Groshijson{
    
    
       
    func doRequestGet(){
        //var jsonResult:NSArray!
        let url="https://jsonplaceholder.typicode.com/todos";
        //let gurl="https://w3school.org"
         let session = NSURLSession.sharedSession()
        
        let urlPath = NSURL(string: url)
       // let request = NSMutableURLRequest(URL: urlPath!)
        let request = NSURLRequest(URL: urlPath!)

       // request.timeoutInterval = 60
       // request.cachePolicy = NSURLRequestCachePolicy.ReloadIgnoringLocalCacheData
        //request.addValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
      //  request.HTTPMethod = "GET"
      //  let bb=session.
        let dataTask = session.dataTaskWithRequest(request) { (data:NSData?, response:NSURLResponse?, error:NSError?) -> Void in
           // self.hideNetworkActivity()
            if((error) != nil) {
                print(error!.localizedDescription)
                print("groshiError")
               // [self.delegate .APIResponseArrived([])]
            }else {
              let jsonResult = try! NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions()) as! NSArray
                //let jsonResult:AnyObject = try! NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.MutableContainers)
                print("webservice.....");
              print(jsonResult);
               self.getTitle(jsonResult);
                self.getId(jsonResult);
                print("successfully call ... Rest API")
            }
        }
        dataTask.resume()
   //return jsonResult;
    }
    func getTitle(jsonResult:AnyObject)->Array<String>{
      //  var myid:Array=[""];
        var mytitle:Array=[""];
        let f=jsonResult.count;
        print("count value=\(f)");
       //let gt = jsonResult[0].valueForKey("title") as! String
       print("from getTittle......");
        for i in 0..<50{
            let obj=jsonResult[i].valueForKey("title") as! String
            mytitle.append(obj);
        }
        
        return mytitle;
    }
    func getId(jsonResult:AnyObject)->Array<String>{
        var myid:Array=[""];
        
       // let f=jsonResult.count;
      //  print("count value=\(f)");
       // let gt = jsonResult[0].valueForKey("id") as! String
       print("getID.......");
      //  print(jsonResult)
        for i in 0..<50{
            let obj=jsonResult[i].valueForKey("title") as! String
            myid.append(obj);
        }
        
        return myid;
    }

    
    func webJsonParse(data:NSData!)->NSDictionary
    {
       
        var gdata:NSDictionary!
    
        if let hotoData=data{
            do{
                gdata=try NSJSONSerialization.JSONObjectWithData(hotoData, options:NSJSONReadingOptions()) as! NSDictionary;
            }
            catch let error as NSError{
                print("MyError=\(error.localizedDescription)");
            }
        }
        print()
        return gdata;
    }
    
    //reads and parse localjson file
    func groshijson()->NSDictionary{
        
        var colorDictionary:NSDictionary!;
        let colorFile=NSBundle.mainBundle().pathForResource("jsongroshidata", ofType:"json");
       // print(colorFile)
        let colorData=NSData(contentsOfFile: colorFile!);
        //print(colorData);
        
       //*starts parsing*
        
        if let data1=colorData{
            
            do {
                
                colorDictionary = try NSJSONSerialization.JSONObjectWithData(data1,options: NSJSONReadingOptions()) as! NSDictionary;
                
                //  return colorDictionary;
                
               }
            catch let error as NSError{
                print("MyError=\(error.localizedDescription)")
            }
        }
        
        //ends parsing
        
       // print(colorDictionary);
        return colorDictionary;
        
    }
    func groshijson1(){
        
        var jsonResult1:NSArray!
        let url="https://jsonplaceholder.typicode.com/todos";
        //let gurl="https://w3school.org"
        let session = NSURLSession.sharedSession()
        
        let urlPath = NSURL(string: url)
        // let request = NSMutableURLRequest(URL: urlPath!)
        let request = NSURLRequest(URL: urlPath!)
        
        // request.timeoutInterval = 60
        // request.cachePolicy = NSURLRequestCachePolicy.ReloadIgnoringLocalCacheData
        //request.addValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        //  request.HTTPMethod = "GET"
        
        let dataTask = session.dataTaskWithRequest(request) { (data:NSData?, response:NSURLResponse?, error:NSError?) -> Void in
            // self.hideNetworkActivity()
            if((error) != nil) {
                print(error!.localizedDescription)
                print("groshiError")
                // [self.delegate .APIResponseArrived([])]
            }else {
                
                
                
                if let data1=data{
                    
                    do{
                        
                     let   jsonResult = try NSJSONSerialization.JSONObjectWithData(data1,options: NSJSONReadingOptions()) as! NSArray;
                         print(jsonResult);
                        
                        jsonResult1=jsonResult;
                        
                    }
                    catch let error as NSError{
                        print("MyError=\(error.localizedDescription)")
                    }
                }

                //let jsonResult = try! NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions()) as! NSArray
                //let jsonResult:AnyObject = try! NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.MutableContainers)
               // print("webservice.....");
               // print(jsonResult);
               // self.getTitle(jsonResult);
               // self.getId(jsonResult);
               // print("successfully call ... Rest API")
            }
        }
        dataTask.resume()
        //return jsonResult1;
    }
    

}
