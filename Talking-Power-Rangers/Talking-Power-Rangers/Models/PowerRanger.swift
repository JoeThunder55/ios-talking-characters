//
//  PowerRanger.swift
//  Talking-Power-Rangers
//
//  Created by Aaron on 8/1/19.
//  Copyright © 2019 AlphaGrade, INC. All rights reserved.
//

import Foundation

enum colors: String {
    case red
    case green
    case blue
    case yellow
    case pink
    case black
    
}

enum zords {
    case mastadon
    case sabertoothTiger
    case triceratops
    case pterodactyl
    case tyranasaurus
    case dragonzord
}

class PowerRanger {
    let name: String
    let color: colors
    let zord: zords
    
    init(name: String, color: colors, zord: zords ) {
        self.name = name
        self.color = color
        self.zord = zord
    }
}
    
    



let Tommy = PowerRanger(name: "Tommy Oliver", color: .green, zord: .dragonzord)
