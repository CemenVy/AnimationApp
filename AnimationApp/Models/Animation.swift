//
//  Animation.swift
//  AnimationApp
//
//  Created by Семен Выдрин on 05.09.2023.
//

struct Animation {
    var title: String
    var curve: String
    
    var force: Double
    var duration: Double
    var delay: Double
    
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
