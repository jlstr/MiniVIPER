//
//  AppDelegate.swift
//  MiniViper
//
//  Created by jose on 4/23/19.
//  Copyright © 2019 jose. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    self.window = UIWindow()
    
    if let window = self.window {
      window.rootViewController = RandomQuoteRouter.createRandomQuoteModule()
      window.makeKeyAndVisible()
    }
    
    return true
  }
}

