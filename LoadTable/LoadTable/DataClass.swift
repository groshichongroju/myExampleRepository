//
//  DataClass.swift
//  LoadTable
//
//  Created by CTS_DEP_AMM00217 on 22/11/16.
//  Copyright © 2016 CTS_DEP_AMM00217. All rights reserved.
//

import UIKit

class DataClass{
    
    var arr:[String]=["number","fruits","animal","mobile","home","car","food","office","city","mall"];
    var emp:[String:String]=["name":"groshi","email":"groshi@gmail.com","mobile":"1234567"];
    var metaData:[String:[String]]=["emp":["number","fruits","animal","mobile"], "fruits":["mango","orange","papaya"],"number":["one","two","three"]];
    var number:[String]=["one","two","three"];
    var fruits:[String]=["mango","orange","papaya"];
    var animal:[String]=["cat","dog","monkey","tiger","elephant","donkey","goat","chicken"];
    var mobile:[String]=["Asus","Sumsung","Iphone","Nokia","Mi","one plus", "micromax","karbon","lenovo"];

    func getdataArray()->Array<String>
    {
    return arr;
    }
    
    func getNumArray()->Array<String>
    {
        return number;

    }
    func getfruitsArray()->Array<String>
    {
            return fruits;
    }
    
    func getmobileArray()->Array<String>
    {
        return mobile;
    }
    
    func getanimalArray()->Array<String>
    {
        return animal;
    }

    func getdataDictionary() ->Dictionary<String,[String]>
    {
        return metaData;
    }
}
