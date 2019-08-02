//
//  PowerRangerTableViewController.swift
//  Talking-Power-Rangers
//
//  Created by Aaron on 8/1/19.
//  Copyright © 2019 AlphaGrade, INC. All rights reserved.
//

import UIKit

class PowerRangerTableViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var powerRangers: [PowerRanger] = []

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToAddNewPR" {
            if let vc = segue.destination as? PowerRangerAddViewController {
                vc.delegate = self
            }
        } else if segue.identifier == "ToDetailPR" {
            if let indexPath = tableView.indexPathForSelectedRow, let vc = segue.destination as? PowerRangerDetailViewController {
                vc.ranger = powerRangers[indexPath.row]
            }
        }
    }
 

}

extension PowerRangerTableViewController: UITableViewDataSource {
    

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return powerRangers.count
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ToDetail") as? PowerRangerTableViewCell else { return UITableViewCell() }
        
        let ranger = powerRangers[indexPath.row]
        cell.ranger = ranger
        
        return cell
    }
    
}

extension PowerRangerTableViewController: AddPowerRanger {
    func itsMorphinTime(_ ranger: PowerRanger) {
        powerRangers.append(ranger)
        dismiss(animated:true)
        tableView.reloadData()
    }
    
}
