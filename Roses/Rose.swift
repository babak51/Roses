//
//  Rose.swift
//  Roses
//
//  Created by Mohammad Amiraslani on 10/25/17.
//  Copyright © 2017 Babak. All rights reserved.
//

import Foundation

class Rose{
    var name: String = ""
    var color: String = ""
    var type: String = ""
    var roseInfo: String = ""
    var roseIsChecked: Bool = false
    var image: String = ""
    
    init(name: String, color: String, type: String, roseInfo: String, roseIsChecked: Bool, image:String){  
        self.name = name
        self.color = color
        self.type = type
        self.roseInfo = roseInfo
        self.roseIsChecked = roseIsChecked
        self.image = image
    }
}
