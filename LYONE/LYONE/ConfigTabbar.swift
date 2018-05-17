//
//  ConfigTabbar.swift
//  LYONE
//
//  Created by zhangyunan on 2018/5/17.
//  Copyright © 2018年 personal-zhangyunan. All rights reserved.
//

import UIKit
import ESTabBarController_swift
enum ConfigTabbar {
    static func customStyle()->ESTabBarController{
        let tabBarController = ESTabBarController()
        let v1 = ViewController()
        let v2 = ViewController()
        let v3 = ViewController()
        let v4 = ViewController()
        let v5 = ViewController()
        v1.tabBarItem = ESTabBarItem.init(title: "Home", image: UIImage(named: "home"), selectedImage: UIImage(named: "home_1"))
        v2.tabBarItem = ESTabBarItem.init(title: "Find", image: UIImage(named: "find"), selectedImage: UIImage(named: "find_1"))
        v3.tabBarItem = ESTabBarItem.init(title: "Photo", image: UIImage(named: "photo"), selectedImage: UIImage(named: "photo_1"))
        v4.tabBarItem = ESTabBarItem.init(title: "Favor", image: UIImage(named: "favor"), selectedImage: UIImage(named: "favor_1"))
        v5.tabBarItem = ESTabBarItem.init(title: "Me", image: UIImage(named: "me"), selectedImage: UIImage(named: "me_1"))
        
        let n1 = ExampleNavigationController.init(rootViewController: v1)
        let n2 = ExampleNavigationController.init(rootViewController: v2)
        let n3 = ExampleNavigationController.init(rootViewController: v3)
        let n4 = ExampleNavigationController.init(rootViewController: v4)
        let n5 = ExampleNavigationController.init(rootViewController: v5)
        
        v1.title = "Home"
        v2.title = "Find"
        v3.title = "Photo"
        v4.title = "List"
        v5.title = "Me"
        
        tabBarController.viewControllers = [n1, n2, n3, n4, n5]
        return tabBarController
    }
}
