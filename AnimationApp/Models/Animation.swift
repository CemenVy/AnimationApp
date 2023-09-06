//
//  Animation.swift
//  AnimationApp
//
//  Created by Семен Выдрин on 05.09.2023.
//

struct Animation {
    let title: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        present: \(title)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        
        let dataStore = DataStore.shared
        
        let titles = dataStore.titles
        let curves = dataStore.curves
        
        let animation = Animation(
            title: titles.randomElement() ?? "pop",
            curve: curves.randomElement() ?? "spring",
            force: Double.random(in: 0.50...3),
            duration: Double.random(in: 0.50...3),
            delay: Double.random(in: 0.80...1)
        )
        
        return animation
    }
}
