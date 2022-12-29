//
//  ViewController.swift
//  Rejoice
//
//  Created by Yury on 29.12.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultTextLabel: UILabel!
    @IBOutlet var resultButton: UIButton!
    var range: Range<Date>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultButton.layer.cornerRadius = 12
        resultTextLabel.isHidden = true
    }
    

    @IBAction func datePicker(_ sender: UIDatePicker) {
        guard sender.date <= Date.now else {
            return
        }
        range = sender.date..<Date.now
    }
    

    @IBAction func resultButtonAction() {
        guard range != nil else {
            resultTextLabel.isHidden = false
            return resultTextLabel.text = "Please choose date before now"
        }
        let days = range.formatted(.components(style: .wide, fields: [.day]))
        resultTextLabel.isHidden = false
        resultTextLabel.text = "You have been enjoying life for \(days)"
    }
    
}

