//
//  AppDelegate.swift
//  AgeUK
//
//  Created by Adrian Mateoaea on 05.12.2015.
//  Copyright © 2015 AgeUK. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    
    window = UIWindow(frame: UIScreen.mainScreen().bounds)
    window?.rootViewController = WelcomeViewController()
    window?.makeKeyAndVisible()
    
    UIBarButtonItem.appearance().setBackButtonTitlePositionAdjustment(
      UIOffset(horizontal: 0, vertical: -100), forBarMetrics: UIBarMetrics.Default)
    
    return true
  }

}

