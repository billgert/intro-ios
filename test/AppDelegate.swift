//
//  AppDelegate.swift
//  test
//
//  Created by Patrik Billgert on 2017-11-29.
//  Copyright © 2017 Patrik Billgert. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: ContactsViewController())
        window?.makeKeyAndVisible()
        return true
    }

}

