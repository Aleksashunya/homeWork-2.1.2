//
//  ViewController.swift
//  homeWork 2.1.2
//
//  Created by Александра Пушмина on 19.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    
    @IBOutlet weak var startButtom: UIButton!
    
    var lightOn: CGFloat = 1
    var lightOff: CGFloat = 0.3
    var step = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorView.layer.cornerRadius = redColorView.frame.height / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.height / 2
        greenColorView.layer.cornerRadius = greenColorView.frame.height / 2
        
        startButtom.layer.cornerRadius = 10
        
        redColorView.alpha = lightOff
        yellowColorView.alpha = lightOff
        greenColorView.alpha = lightOff
    }

    @IBAction func tappedStartButtom(_ sender: Any) {
        startButtom.setTitle("NEXT", for: .normal)
        step += 1
        
        switch step {
        case 1:
            greenColorView.alpha = lightOff
            redColorView.alpha = lightOn
        case 2:
            redColorView.alpha = lightOff
            yellowColorView.alpha = lightOn
        case 3:
            yellowColorView.alpha = lightOff
            greenColorView.alpha = lightOn
            step = 0
        default: return
        }
    }
}


