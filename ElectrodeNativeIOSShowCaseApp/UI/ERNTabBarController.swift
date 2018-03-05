/*
 * Copyright 2017 WalmartLabs
 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 
 * http://www.apache.org/licenses/LICENSE-2.0
 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

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
