//
//  ViewController.swift
//  TrafficLights
//
//  Created by Nikita Uliyanov on 17.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchButton.layer.cornerRadius = 10
        redLight.layer.cornerRadius = 38
        yellowLight.layer.cornerRadius = 38
        greenLight.layer.cornerRadius = 38
    }
    
    @IBAction func switchButtonDidTapped() {
        switchButton.setTitle("NEXT", for: .normal)
        
        if redLight.alpha == 1, yellowLight.alpha.isLess(than: 1), greenLight.alpha.isLess(than: 1) {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if redLight.alpha.isLess(than: 1), yellowLight.alpha == 1, greenLight.alpha.isLess(than: 1) {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else {
            greenLight.alpha = 0.3
            redLight.alpha = 1
        }
    }
    
    
}

