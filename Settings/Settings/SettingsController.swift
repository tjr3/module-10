//
//  SettingsController.swift
//  Settings
//
//  Created by Tyler on 5/23/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

import UIKit

class SettingsController {
    
    static let sharedController = SettingsController()
    
    
    // CRUD
    
    var mySettings: [Setting]
    
    init() {
        let music = Setting(name: "Music", isSet: false, image: UIImage(named: "music"))
        let apps = Setting(name: "Apps", isSet: true, image: UIImage(named: "apps"))
        let books = Setting(name: "Books", isSet: false, image: UIImage(named: "books"))
        let updates = Setting(name: "Updates", isSet: false, image: UIImage(named: "apps"))
        self.mySettings = [music, apps, books, updates]
    }
    
    func updateSettingsSelection(setting: Setting, selected: Bool) {
        setting.isSet = selected
    }
}
