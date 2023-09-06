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
    @IBOutlet var animationLabel: SpringLabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    // MARK: - Private Properties
    private var animation = Animation.getAnimation()
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 10
    }
    
    // MARK: - IB Actions
    @IBAction func runSpringAnimationDidTapped(_ sender: SpringButton) {
        animationLabel.animation = "zoomOut"
        animationLabel.x = 50
        animationLabel.animate()
        animationLabel.text = animation.description
        
        animationLabel.animateNext { [unowned self] in
            animationLabel.animation = "zoomIn"
            animationLabel.animate()
            
            animationView.animation = animation.title
            animationView.curve = animation.curve
            animationView.force = animation.force
            animationView.duration = animation.duration
            animationView.delay = animation.delay
            animationView.animate()
            
            animation = Animation.getAnimation()
            sender.setTitle("Run \(animation.title)", for: .normal)
            
        }
    }
}


