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
    static func customStyle(delegate: UITabBarControllerDelegate?)->UINavigationController{
        let tabBarController = ESTabBarController()
        tabBarController.delegate = delegate
        tabBarController.title = "Irregularity"
        tabBarController.tabBar.shadowImage = UIImage(named: "transparent")
        tabBarController.tabBar.backgroundImage = UIImage(named: "background_dark")
        tabBarController.shouldHijackHandler = {
            tabbarController, viewController, index in
            if index == 2 {
                return true
            }
            return false
        }
        tabBarController.didHijackHandler = {
            [weak tabBarController] tabbarController, viewController, index in
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                let alertController = UIAlertController.init(title: nil, message: nil, preferredStyle: .actionSheet)
                let takePhotoAction = UIAlertAction(title: "Take a photo", style: .default, handler: nil)
                alertController.addAction(takePhotoAction)
                let selectFromAlbumAction = UIAlertAction(title: "Select from album", style: .default, handler: nil)
                alertController.addAction(selectFromAlbumAction)
                let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                alertController.addAction(cancelAction)
                tabBarController?.present(alertController, animated: true, completion: nil)
            }
        }
        
        let v1 = ViewController()
        let v2 = ViewController()
        let v3 = ViewController()
        let v4 = ViewController()
        let v5 = ViewController()
        
        v1.tabBarItem = ESTabBarItem.init(TabbarContentView(), title: "Home", image: UIImage(named: "home"), selectedImage: UIImage(named: "home_1"))
        v2.tabBarItem = ESTabBarItem.init(TabbarContentView(), title: "Find", image: UIImage(named: "find"), selectedImage: UIImage(named: "find_1"))
        v3.tabBarItem = ESTabBarItem.init(MiddleTabbarContentView(), title: nil, image: UIImage(named: "photo_verybig"), selectedImage: UIImage(named: "photo_verybig"))
        v4.tabBarItem = ESTabBarItem.init(TabbarContentView(), title: "Favor", image: UIImage(named: "favor"), selectedImage: UIImage(named: "favor_1"))
        v5.tabBarItem = ESTabBarItem.init(TabbarContentView(), title: "Me", image: UIImage(named: "me"), selectedImage: UIImage(named: "me_1"))
        
        tabBarController.viewControllers = [v1, v2, v3, v4, v5]
        
        let navigationController = ExampleNavigationController.init(rootViewController: tabBarController)
        tabBarController.title = "Example"
        return navigationController
    }
}

