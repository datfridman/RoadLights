//
//  ViewController.swift
//  RoadLights
//
//  Created by Leon Fridman on 7/29/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var orangeLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 90
        orangeLightView.layer.cornerRadius = 90
        greenLightView.layer.cornerRadius = 90
        redLightView.backgroundColor = UIColor.red.withAlphaComponent(0.5)
        orangeLightView.backgroundColor = UIColor.orange.withAlphaComponent(0.5)
        greenLightView.backgroundColor = UIColor.green.withAlphaComponent(0.5)
    }
    
    @IBAction private func startButtonPressed() {
        startButton.setTitle("Next", for: .normal)
        
        if redLightView.backgroundColor == UIColor.red.withAlphaComponent(0.5) && orangeLightView.backgroundColor == UIColor.orange.withAlphaComponent(0.5) &&   greenLightView.backgroundColor == UIColor.green.withAlphaComponent(0.5){
            redLightView.backgroundColor = UIColor.red.withAlphaComponent(1)
        } else if redLightView.backgroundColor == UIColor.red.withAlphaComponent(1) {
            redLightView.backgroundColor = UIColor.red.withAlphaComponent(0.5)
            orangeLightView.backgroundColor = UIColor.orange.withAlphaComponent(1)
        } else if  orangeLightView.backgroundColor == UIColor.orange.withAlphaComponent(1) {
            orangeLightView.backgroundColor = UIColor.orange.withAlphaComponent(0.5)
            greenLightView.backgroundColor = UIColor.green.withAlphaComponent(1)
        } else if greenLightView.backgroundColor == UIColor.green.withAlphaComponent(1) {
            greenLightView.backgroundColor = UIColor.green.withAlphaComponent(0.5)
            redLightView.backgroundColor = UIColor.red.withAlphaComponent(1)
        }
    }
    
}

