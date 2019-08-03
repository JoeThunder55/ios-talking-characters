//
//  PowerRanger.swift
//  Talking-Power-Rangers
//
//  Created by Aaron on 8/1/19.
//  Copyright © 2019 AlphaGrade, INC. All rights reserved.
//

import Foundation

enum colors: String {
    case black = "Black"
    case yellow = "Yellow"
    case blue = "Blue"
    case pink = "Pink"
    case red = "Red"
    case green = "Green"
    case white = "White"
    
}

enum zords: String {
    case black = "Mastadon"
    case yellow = "Sabertooth Tiger"
    case blue = "Triceratops"
    case pink = "Pterodactyl"
    case red = "Tyrannosaurus"
    case green = "DragonZord"
    case white = "White TigerZord"
}

struct PowerRanger {
    let name: String
    let color: String
    let zord: String
    
    init(name: String, color: colors.RawValue) {
        self.name = name
        self.color = color
        self.zord = color
    }
}
    
    



//let tommy = PowerRanger(name: "Tommy Oliver", color: "green")
