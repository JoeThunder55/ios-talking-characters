//
//  PowerRangerDetailViewController.swift
//  Talking-Power-Rangers
//
//  Created by Aaron on 8/1/19.
//  Copyright © 2019 AlphaGrade, INC. All rights reserved.
//

import UIKit

class PowerRangerDetailViewController: UIViewController {
    
    @IBOutlet weak var rangerImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var zordLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    
    var ranger: PowerRanger? {
        didSet {
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    //MARK: - data displayed on detail view
        private func updateViews() {
        guard let ranger = ranger else { return }
        
        nameLabel.text = ranger.name
        zordLabel.text = ranger.color
        colorLabel.text = ranger.color
//        rangerImageView.image = "red.png"
        
    }



}
