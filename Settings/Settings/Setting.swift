//
//  Setting.swift
//  Settings
//
//  Created by Tyler on 5/23/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

import UIKit

class Setting {
    
    var image: UIImage?
    let name: String
    var isSet: Bool
    
    init(name: String, isSet: Bool, image: UIImage?) {
        
        self.name = name
        self.isSet = isSet
        self.image = image 
    }
}
