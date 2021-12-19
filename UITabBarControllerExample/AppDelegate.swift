//
//  AppDelegate.swift
//  UITabBarControllerExample
//
//  Created by 장효원 on 2021/12/17.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc1 = storyboard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        let vc2 = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        let vc3 = storyboard.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        
        let nc1 = UINavigationController.init(rootViewController: vc1)
        let nc2 = UINavigationController.init(rootViewController: vc2)
        let nc3 = UINavigationController.init(rootViewController: vc3)
        
        nc1.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        nc2.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        nc3.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 2)
        
        let tabBarController = UITabBarController()
        UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor.red], for: .selected)
        
        tabBarController.viewControllers = [nc1, nc2, nc3]
        
        if #available(iOS 15.0, *) {
            UITabBar.appearance().backgroundColor = UIColor.white
        } else {
            UITabBar.appearance().barTintColor = UIColor.white
        }
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        return true
    }


}

