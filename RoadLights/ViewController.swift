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
        redLightView.alpha = 0.5
        orangeLightView.alpha = 0.5
        greenLightView.alpha = 0.5
        startButton.layer.cornerRadius = 10
    }
    
    override func viewDidLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        orangeLightView.layer.cornerRadius = orangeLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    }
    
    @IBAction private func startButtonPressed() {
        if startButton.currentTitle == "Start" {
        startButton.setTitle("Next", for: .normal)
        }
        
        if redLightView.alpha == 1 {
            redLightView.alpha = 0.5
            orangeLightView.alpha = 1
        } else if orangeLightView.alpha == 1 {
            orangeLightView.alpha = 0.5
            greenLightView.alpha = 1
        } else if greenLightView.alpha == 1 {
            greenLightView.alpha = 0.5
            redLightView.alpha = 1
        } else {
            redLightView.alpha = 1
        }
    }
    
}

