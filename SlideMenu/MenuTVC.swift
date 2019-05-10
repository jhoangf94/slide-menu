//
//  MenuTVC.swift
//  SlideMenu
//
//  Created by Developer2 on 24/04/19.
//  Copyright © 2019 jhoanDevelover. All rights reserved.
//

import UIKit

class MenuTVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.keyWindow?.gestureMenu()
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        NotificationCenter.default.post(name: .showSlideMenu, object: nil)
        
        switch indexPath.row {
        case 1: NotificationCenter.default.post(name: .showHome, object: nil)
        case 2: NotificationCenter.default.post(name: .showProfile, object: nil)
        case 3: NotificationCenter.default.post(name: .showSettings, object: nil)
        default:break
        }
    }

}
