/*
 Copyright 2020 Adobe
 All Rights Reserved.
 
 NOTICE: Adobe permits you to use, modify, and distribute this file in
 accordance with the terms of the Adobe license agreement accompanying
 it.
 */

import UIKit
import AdSupport

class MainScreenController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        let coreButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        coreButton.backgroundColor = .gray
        coreButton.setTitle("Core", for: .normal)
        coreButton.addTarget(self, action: #selector(coreAction), for: .touchUpInside)

        let assuranceButton = UIButton(frame: CGRect(x: 100, y: 160, width: 100, height: 50))
        assuranceButton.backgroundColor = .gray
        assuranceButton.setTitle("Assurance", for: .normal)
        assuranceButton.addTarget(self, action: #selector(assuranceAction), for: .touchUpInside)
        
        let edgeButton = UIButton(frame: CGRect(x: 100, y: 220, width: 100, height: 50))
        edgeButton.backgroundColor = .gray
        edgeButton.setTitle("Edge", for: .normal)
        edgeButton.addTarget(self, action: #selector(edgeAction), for: .touchUpInside)

        
        let messagingButton = UIButton(frame: CGRect(x: 100, y: 280, width: 100, height: 50))
        messagingButton.backgroundColor = .gray
        messagingButton.setTitle("Messaging", for: .normal)
        messagingButton.addTarget(self, action: #selector(messagingAction), for: .touchUpInside)

        
        self.view.addSubview(coreButton)
        self.view.addSubview(assuranceButton)
        self.view.addSubview(edgeButton)
        self.view.addSubview(messagingButton)
    }
    
    @objc func coreAction(sender: UIButton!) {
        let mainTabBarController = MainTabBarController()
        mainTabBarController.selectedIndex = 0
        self.present(mainTabBarController, animated: true, completion: nil)
    }
    
    @objc func assuranceAction(sender: UIButton!) {
        let mainTabBarController = MainTabBarController()
        mainTabBarController.selectedIndex = 3
        self.present(mainTabBarController, animated: true, completion: nil)
    }
    
    @objc func edgeAction(sender: UIButton!) {
        let mainTabBarController = MainTabBarController()
        mainTabBarController.selectedIndex = 1
        self.present(mainTabBarController, animated: true, completion: nil)
    }
    
    @objc func messagingAction(sender: UIButton!) {
        let mainTabBarController = MainTabBarController()
        mainTabBarController.selectedIndex = 2
        self.present(mainTabBarController, animated: true, completion: nil)
    }
}



