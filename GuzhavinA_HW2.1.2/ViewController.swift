//
//  ViewController.swift
//  GuzhavinA_HW2.1.2
//
//  Created by Саша Гужавин on 19/09/2019.
//  Copyright © 2019 Sasha Guzhavin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redCircle: UIView!
    @IBOutlet weak var yellowCircle: UIView!
    @IBOutlet weak var greenCircle: UIView!
    @IBOutlet weak var outletButton: UIButton!
    @IBAction func actionButton(_ sender: UIButton) {
        
        if redCircle.alpha < 1, yellowCircle.alpha < 1, greenCircle.alpha < 1 {
            outletButton.setTitle("NEXT", for: .normal)
            redCircle.alpha = 1
        } else if redCircle.alpha == 1, yellowCircle.alpha < 1, greenCircle.alpha < 1 {
            redCircle.alpha = 0.3
            yellowCircle.alpha = 1
        } else if yellowCircle.alpha == 1, greenCircle.alpha < 1, redCircle.alpha < 1 {
            yellowCircle.alpha = 0.3
            greenCircle.alpha = 1
        } else if greenCircle.alpha == 1, redCircle.alpha < 1, yellowCircle.alpha < 1 {
            greenCircle.alpha = 0.3
            redCircle.alpha = 1
        }
        
    }
    
    override func viewDidLoad() {
        
        outletButton.backgroundColor = .blue
        redCircle.alpha = 0.3
        redCircle.layer.cornerRadius = 50
        yellowCircle.alpha = 0.3
        yellowCircle.layer.cornerRadius = 50
        greenCircle.alpha = 0.3
        greenCircle.layer.cornerRadius = 50
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

