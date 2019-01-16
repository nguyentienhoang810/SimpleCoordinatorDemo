//
//  AppDelegate.swift
//  RouterDemo
//
//  Created by nguyentienhoang on 1/1/19.
//  Copyright © 2019 nguyentienhoang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let appCoordinator = AppCoordinator(window: window!)
        appCoordinator.start()
        
        return true
    }
}

