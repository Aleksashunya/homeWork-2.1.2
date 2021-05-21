//
//  ViewController.swift
//  homeWork 2.1.2
//
//  Created by Александра Пушмина on 19.05.2021.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    
    @IBOutlet weak var startButtom: UIButton!
    
    private var lightOn: CGFloat = 1
    private var lightOff: CGFloat = 0.3
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButtom.layer.cornerRadius = 10
        
        redColorView.alpha = lightOff
        yellowColorView.alpha = lightOff
        greenColorView.alpha = lightOff
    }
    
    override func viewWillLayoutSubviews() {
        redColorView.layer.cornerRadius = redColorView.frame.width / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.width / 2
        greenColorView.layer.cornerRadius = greenColorView.frame.width / 2
    }
    
    
    @IBAction func tappedStartButtom(_ sender: Any) {
        if startButtom.currentTitle == "START" {
            startButtom.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenColorView.alpha = lightOff
            redColorView.alpha = lightOn
            currentLight = .yellow
        case .yellow:
            redColorView.alpha = lightOff
            yellowColorView.alpha = lightOn
            currentLight = .green
        case .green:
            yellowColorView.alpha = lightOff
            greenColorView.alpha = lightOn
            currentLight = .red
        }
    }
}


