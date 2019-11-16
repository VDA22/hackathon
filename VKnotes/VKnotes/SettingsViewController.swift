//
//  SettingsViewController.swift
//  VKnotes
//
//  Created by Onie on 16.11.2019.
//  Copyright © 2019 Fems. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        self.title = "Settings"
        self.tabBarItem = UITabBarItem(title: "Настройки", image: UIImage(named: "settings"), tag: 0)
    }

    let logOut : UIButton = {
       let logOutButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        logOutButton.backgroundColor = .systemBlue
        logOutButton.setTitle("Log Out", for: .normal)
        logOutButton.layer.cornerRadius = 15
        logOutButton.addTarget(self, action: #selector(logOutS), for: .touchUpInside)
        
        return logOutButton
    }()
    
    @objc
    func logOutS() {
     //   WebCacheCleaner.clean()
        AppDelegate.defaults.set(false, forKey: "loggedIn")
        AppDelegate.shared.rootViewController.switchToLogout()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        logOut.center = view.center

        view.addSubview(logOut)
       
    }
}
