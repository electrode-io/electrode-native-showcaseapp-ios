//
//  AppDelegate.swift
//  ElectrodeNativeIOSShowCaseApp
//
//  Created by Randy Haid on 12/20/17.
//  Copyright © 2017 WalmartLabs. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        // Must initialize the container before we can access it within the app.
        ElectrodeWrapper.setupContainer()
        
        return true
    }
}

