//
//  CalculatorViewController.swift
//  SimpleSwiftProject
//
//  Created by Milan Ricoul on 02/04/2017.
//  Copyright © 2017 Milan Ricoul. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var additionLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var pourboireLabel: UILabel!

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        updateDisplay()
    }
    
    let tauxPourboire = 0.12
    
    func updateDisplay() {
        let montantAddition = Int(slider.value)
        
        print(montantAddition)
        additionLabel.text = String(montantAddition) + " €"
        pourboireLabel.text = String(Int(Double(montantAddition) * tauxPourboire))  + " €"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDisplay()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
