//
//  ViewController.swift
//  AnimationApp
//
//  Created by Семен Выдрин on 05.09.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presentLabel: SpringLabel!
    @IBOutlet var curveLabel: SpringLabel!
    @IBOutlet var forceLabel: SpringLabel!
    @IBOutlet var durationLabel: SpringLabel!
    @IBOutlet var delayLabel: SpringLabel!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 10
        setupLabelValue()
    }
    
    @IBAction func runSpringAnimationDidTapped(_ sender: SpringButton) {
            setupLabelValue()
            animationView.animation = animation.title
            animationView.curve = animation.curve
            animationView.force = animation.force
            animationView.duration = animation.duration
            animationView.delay = animation.delay
            animationView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.title)", for: .normal)
    }
    
    private func setupLabelValue() {
        presentLabel.text = ("present: \(String(animation.title))")
        curveLabel.text = ("curve: \(String(animation.curve))")
        forceLabel.text = ("force: \(String(format: "%.2f", animation.force))")
        durationLabel.text = ("duration: \(String(format: "%.2f", animation.duration))")
        delayLabel.text = ("delay: \(String(format: "%.2f", animation.delay))")
    }
    
}

