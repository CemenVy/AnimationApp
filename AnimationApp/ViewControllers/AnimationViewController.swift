//
//  ViewController.swift
//  AnimationApp
//
//  Created by Семен Выдрин on 05.09.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presentLabel: SpringLabel!
    @IBOutlet var curveLabel: SpringLabel!
    @IBOutlet var forceLabel: SpringLabel!
    @IBOutlet var durationLabel: SpringLabel!
    @IBOutlet var delayLabel: SpringLabel!
    
    // MARK: - Private Properties
    private var animation = Animation.getAnimation()
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 10
        updateLabelValue()
    }
    
    // MARK: - IB Actions
    @IBAction func runSpringAnimationDidTapped(_ sender: SpringButton) {
        
        let labels = [
            presentLabel,
            curveLabel,
            forceLabel,
            durationLabel,
            delayLabel
        ]
        
        for label in labels {
            label?.animation = "pop"
            label?.curve = "ease"
            label?.force = 1.5
            label?.duration = 0.50
            label?.delay = 0
            label?.animate()
        }

            animationView.animation = animation.title
            animationView.curve = animation.curve
            animationView.force = animation.force
            animationView.duration = animation.duration
            animationView.delay = animation.delay
            animationView.animate()
        
        updateLabelValue()
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.title)", for: .normal)
    }
    
    // MARK: - Private Methods
    private func updateLabelValue() {
        presentLabel.text = "present: \(animation.title)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force: \(String(format: "%.2f", animation.force))"
        durationLabel.text = "duration: \(String(format: "%.2f", animation.duration))"
        delayLabel.text = "delay: \(String(format: "%.2f", animation.delay))"
    }
    
}


