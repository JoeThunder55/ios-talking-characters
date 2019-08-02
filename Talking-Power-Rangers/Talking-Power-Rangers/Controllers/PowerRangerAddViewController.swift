//
//  PowerRangerAddViewController.swift
//  Talking-Power-Rangers
//
//  Created by Aaron on 8/1/19.
//  Copyright © 2019 AlphaGrade, INC. All rights reserved.
//

import UIKit

protocol AddPowerRanger {
    func itsMorphinTime(_ ranger: PowerRanger)
}

class PowerRangerAddViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var colorTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let picker = UIPickerView()
    }
    
     var delegate: AddPowerRanger?
    
//    let pickerData = ["Red", "Blue"]
//
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return pickerData.count
//    }
//
//    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return pickerData[row]
//    }
//
//    func pickerView( _ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        colorTextField.text = pickerData[row]
//    }
//
//    picker.delegate = self
    
   
    
    
    @IBAction func cancelPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func savePressed(_ sender: Any) {
        guard let name = nameTextField.text, !name.isEmpty, let color = colorTextField.text, !color.isEmpty else {return}
        
        let newPowerRanger = PowerRanger(name: name, color: color)
        
        delegate?.itsMorphinTime(newPowerRanger)
    }
}
    
    extension PowerRangerAddViewController: UITextFieldDelegate {
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            if let text = textField.text, !text.isEmpty {
                switch textField {
                case nameTextField: nameTextField.becomeFirstResponder()
                case colorTextField: colorTextField.becomeFirstResponder()
                default: textField.resignFirstResponder()
                }
            }
            return false
        }
        
        
        
    }
    





