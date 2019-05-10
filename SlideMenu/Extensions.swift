//
//  Extensions.swift
//  SlideMenu
//
//  Created by Developer2 on 24/04/19.
//  Copyright © 2019 jhoanDevelover. All rights reserved.
//

import UIKit

extension UIWindow {
    
    func gestureMenu(){
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipedGesture))
        self.addGestureRecognizer(swipeGesture)
    }
   
    @objc func swipedGesture(_ swipe: UISwipeGestureRecognizer){
        switch swipe.direction {
        case .right: NotificationCenter.default.post(name: .showMenu, object: nil)
        case .left: NotificationCenter.default.post(name: .hideMenu, object: nil)
        default: break
        }
        
    }
}

extension NSNotification.Name {
    public static let showMenu = NSNotification.Name(rawValue: "showMenu")
    public static let hideMenu = NSNotification.Name(rawValue: "hideMenu")
    public static let showHome = NSNotification.Name(rawValue: "showHome")
    public static let showProfile = NSNotification.Name(rawValue: "showProfile")
    public static let showSettings = NSNotification.Name(rawValue: "showSettings")
    public static let showSlideMenu = NSNotification.Name(rawValue: "showSlideMenu")
}
