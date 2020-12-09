//
//  AppDelegate.swift
//  MyTask
//
//  Created by mohamed sayed on 12/9/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let navigationContoller = UINavigationController(rootViewController: MostPopularArticlesList())
        navigationContoller.navigationBar.barTintColor = .white
        navigationContoller.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black,NSAttributedString.Key.font :UIFont.nYRegular(size: 25)]
        window?.rootViewController = navigationContoller
        return true
    }

}

