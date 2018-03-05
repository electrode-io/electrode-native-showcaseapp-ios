//
//  ERNTabBarController.swift
//  ElectrodeNativeIOSShowCaseApp
//
//  Created by Claire Weijie Li on 3/5/18.
//  Copyright © 2018 WalmartLabs. All rights reserved.
//

import UIKit

class ERNTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let sb = UIStoryboard(name: "Main", bundle: Bundle.main)
        let welcomeVC = sb.instantiateViewController(withIdentifier: "welcome")
        let image = UIImage(named: "first")
        welcomeVC.tabBarItem = UITabBarItem(title: "Welcome", image: UIImage(named: "first"), tag: 0)
        let moviewNavController = ERNNavigationController(rootViewController: MovieListViewController())
        moviewNavController.tabBarItem = UITabBarItem(title: "Movie", image: UIImage(named: "movieBubble"), tag: 1)
        let pickerVC = sb.instantiateViewController(withIdentifier: ColorPickerViewController.identifier)
        pickerVC.tabBarItem   = UITabBarItem(title: "Movie", image: UIImage(named: "colorCircleArrow"), tag: 2)
        let moreVC = ERNBaseViewController()
        moreVC.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 3)
        self.viewControllers = [welcomeVC, moviewNavController, pickerVC, moreVC]
    }

}
