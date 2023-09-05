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
        
        let animations = dataStore.animations.shuffled()
        let curves = dataStore.curves.shuffled()
        
        return Animation(
            title: animations.first ?? "pop",
            curve: curves.first ?? "spring",
            force: Double.random(in: 0.10...3),
            duration: Double.random(in: 0.10...2),
            delay: 1)
    }
}
