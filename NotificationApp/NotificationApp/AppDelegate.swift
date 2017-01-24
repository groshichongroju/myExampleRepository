//
//  AppDelegate.swift
//  NotificationApp
//
//  Created by CTS_DEP_AMM00217 on 02/01/17.
//  Copyright © 2017 cognizant. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        let settings: UIUserNotificationSettings = UIUserNotificationSettings(forTypes: [.Alert, .Badge, .Sound], categories: nil)
        
        application.registerUserNotificationSettings(settings)
       // self.createLocalNotification()
       NSTimer.scheduledTimerWithTimeInterval(4.0, target: self, selector: Selector("createLocalNotification"), userInfo: nil, repeats: true)

        return true
    }
    func createLocalNotification(){
        let localNotification = UILocalNotification()
        localNotification.fireDate = NSDate(timeIntervalSinceNow: 5)
        localNotification.alertBody = "new Blog Posted at iosApp.com by groshi"
        localNotification.alertTitle="Updated"
        localNotification.timeZone = NSTimeZone.defaultTimeZone()
        localNotification.applicationIconBadgeNumber = UIApplication.sharedApplication().applicationIconBadgeNumber + 1
        
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
        
    }

      func application(application: UIApplication, didReceiveLocalNotification notification: UILocalNotification) {
        if application.applicationState == .Active{
         self.takeAction(notification)
        }
//        self.takeAction(notification)
      //  UIApplication.sharedApplication().applicationIconBadgeNumber=0
        
    }
    
    func takeAction(usernotification:UILocalNotification)
    {
        let mymessage=usernotification.alertBody
        let mytitle=usernotification.alertTitle
        
        let alert=UIAlertController(title:mytitle, message:mymessage, preferredStyle: .Alert)
        let okaction=UIAlertAction(title: "ok", style: .Default,handler:nil)
        let cancelaction=UIAlertAction(title:"cancel", style: .Default, handler: nil)
        alert.addAction(cancelaction)
        alert.addAction(okaction)
        UIApplication.sharedApplication().keyWindow?.rootViewController?.presentViewController(alert, animated: true, completion: nil)
        
        
        UIApplication.sharedApplication().applicationIconBadgeNumber=0
    }
       //APNS start by groshi
    func application(application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError) {
      //  <#code#>
    }
    func application(application: UIApplication, didRegisterUserNotificationSettings notificationSettings: UIUserNotificationSettings) {
       // <#code#>
        // self.createLocalNotification()
    }
    func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData) {
       // <#code#>
    }
    func application(application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject]) {
       // <#code#>
    }

    //APNS end by groshi
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

