//
//  Profile.swift
//  Pokedex2
//
//  Created by unicred on 19/12/22.
//

import UIKit

class Profile: NSObject {
    var name: String?
    var number: String?
    var image: String?
    var type: String?
    
    init(name: String?, number: String?, image: String?, type: String?) {
        self.name = name
        self.number = number
        self.image = image
        self.type = type
    }
}
