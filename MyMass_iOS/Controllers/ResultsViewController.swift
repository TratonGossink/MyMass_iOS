//
//  ResultsViewController.swift
//  MyMass_iOS
//
//  Created by Traton Gossink on 4/7/23.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    var calcController = CalcViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalcPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
