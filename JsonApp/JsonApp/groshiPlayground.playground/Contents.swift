//: Playground - noun: a place where people can play

import Cocoa

let request = NSURLRequest(URL: NSURL(string: "http://iswift.org")!)

// Perform the request
NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue(), completionHandler:{
    (response: NSURLResponse?, data: NSData?, error: NSError?)-> Void in
    
    // Get data as string
    let str = NSString(data: data!, encoding: NSUTF8StringEncoding)
    print(str)
    }
);
				