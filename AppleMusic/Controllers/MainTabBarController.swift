//
//  TabBarController.swift
//  AppleMusic
//
//  Created by Rusell on 08.11.2020.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = UIColor.appColor(.pink)
        
        viewControllers = [
            createViewController(rootViewController: SearchViewController(),
                                 image: UIImage.appImage(.search),
                                 title: Descriptions.Images.search),
            createViewController(rootViewController: LibraryViewController(),
                                 image: UIImage.appImage(.library),
                                 title: Descriptions.Images.library),
        ]
        
    }
    
    private func createViewController(rootViewController: UIViewController,
                         image: UIImage,
                         title: String) -> UIViewController {
        
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        
        navigationVC.tabBarItem.image = image
        navigationVC.tabBarItem.title = title
        rootViewController.navigationItem.title = title//Descriptions.Navigation.titleSearch
        navigationVC.navigationBar.prefersLargeTitles = true
        return navigationVC
    }
    
   
}
