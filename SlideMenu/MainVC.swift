//
//  MainVC.swift
//  SlideMenu
//
//  Created by Developer2 on 24/04/19.
//  Copyright © 2019 jhoanDevelover. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.keyWindow?.gestureMenu()
        NotificationCenter.default.addObserver(self, selector: #selector(showProfile), name: .showProfile, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showSettings), name: .showSettings, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showHome), name: .showHome, object: nil)
    }
    
    @objc func showProfile(){
        navigationController?.popToRootViewController(animated: false)
        performSegue(withIdentifier: "showProfile", sender: nil)
    }
    
    @objc func showSettings(){
        navigationController?.popToRootViewController(animated: false)
        performSegue(withIdentifier: "showSettings", sender: nil)
    }
    
    @objc func showHome(){
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func iconMenuTouched(){
        NotificationCenter.default.post(name: .showSlideMenu, object: nil)
    }
}

