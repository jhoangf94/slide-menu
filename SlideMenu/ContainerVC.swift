//
//  ViewController.swift
//  SlideMenu
//
//  Created by Developer2 on 24/04/19.
//  Copyright © 2019 jhoanDevelover. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {

    @IBOutlet weak var slideMenuConstraintLeft:NSLayoutConstraint!
    var slideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,selector: #selector(toggleSlideMenu),name: .showSlideMenu,object: nil)
        NotificationCenter.default.addObserver(self,selector: #selector(showMenu),name: .showMenu,object: nil)
        NotificationCenter.default.addObserver(self,selector: #selector(hideMenu),name: .hideMenu,object: nil)
    }
    
    @objc func toggleSlideMenu(){
        if slideMenuOpen {
            hideMenu()
        }else{
            showMenu()
        }
        animateView()
    }
    
    @objc func showMenu(){
        slideMenuConstraintLeft.constant = 0
        slideMenuOpen = true
        animateView()
    }
    
    @objc func hideMenu(){
        slideMenuConstraintLeft.constant = -220
        slideMenuOpen = false
        animateView()
    }
    
    private func animateView(){
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
}


