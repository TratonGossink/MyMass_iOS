//
//  ViewController.swift
//  MyMass_iOS
//
//  Created by Traton Gossink on 4/4/23.
//

import UIKit

class CalcViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightDisplay: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightDisplay: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightDisplay.text = String(format: "%.2f" + "m", sender.value)
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightDisplay.text = String(format: "%.1f" + "Kg", sender.value)
    }
    
    
    @IBAction func calcBtnPressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
        
        
    }
    
}
