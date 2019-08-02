//
//  PowerRangerTableViewCell.swift
//  Talking-Power-Rangers
//
//  Created by Aaron on 8/1/19.
//  Copyright © 2019 AlphaGrade, INC. All rights reserved.
//

import UIKit

class PowerRangerTableViewCell: UITableViewCell {


    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var rangerLabel: UILabel!
    @IBOutlet weak var rangerImage: UIImageView!
    @IBOutlet weak var zordLabel: UILabel!
    
    
    
    var ranger: PowerRanger? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let ranger = ranger else  { return }
        
        nameLabel.text = ranger.name
        rangerLabel.text = ranger.color
        zordLabel.text = ranger.zord
        
        
    }
    

}
