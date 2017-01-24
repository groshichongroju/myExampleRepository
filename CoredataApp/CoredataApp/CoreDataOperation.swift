//
//  CoreDataOperation.swift
//  CoredataApp
//
//  Created by CTS_DEP_AMM00217 on 13/12/16.
//  Copyright © 2016 cognizant. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class CoreDataOperation{
    
   func saveTo( name:String, pwd:String )
    {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext
        
        //2
        let entity =  NSEntityDescription.entityForName("User", inManagedObjectContext:managedContext)
        
        let myinsert = NSManagedObject(entity: entity!,insertIntoManagedObjectContext: managedContext)
        
        //3
        myinsert.setValue(name, forKey: "username")
        myinsert.setValue(pwd, forKey: "password")
        
        //4
        do {
            try managedContext.save()
            //5
            // people.append(person)
            print("save successfully");
        } catch let error as NSError  {
            print("catch error")
            print("Could not save \(error), \(error.userInfo)")
        }
        
    }
    
    

func RetriveFrom()->[NSManagedObject]{
    
    var data = [NSManagedObject]()
    let appDelegate =
        UIApplication.sharedApplication().delegate as! AppDelegate
    
    let managedContext = appDelegate.managedObjectContext
    
    //2
    let fetchRequest = NSFetchRequest(entityName: "User")
    
    //3
    do {
        
        let results =
            try managedContext.executeFetchRequest(fetchRequest)
        data = results as! [NSManagedObject]
        print("retrive successfully..")
        print(results.count)
        for i in data{
            print(i.valueForKey("username") as! String);
            print(i.valueForKey("password") as! String);
        }
        print("printed")
        
    } catch let error as NSError {
        print("Error Cought:groshi")
        print("Could not fetch \(error), \(error.userInfo)")
    }
    //managedContext.delete(myinsert);
      return data;
    
    }
}
