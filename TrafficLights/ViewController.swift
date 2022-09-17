//
//  ViewController.swift
//  TrafficLights
//
//  Created by Nikita Uliyanov on 17.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var switchButton: UIButton!
    
    @IBOutlet var redLight: UIView!
    
    @IBOutlet var yellowLight: UIView!
    
    @IBOutlet var greenLight: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        switchButton.layer.cornerRadius = 10
        
    }

    @IBAction func switchButtonDidTapped() {
    }
    
}

