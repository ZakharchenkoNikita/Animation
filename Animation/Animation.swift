//
//  Animation.swift
//  Animation
//
//  Created by Nikita on 03.08.21.
//

import Spring

struct Animation {
    let animationPreset: [Spring.AnimationPreset]
    let animationCurve: [Spring.AnimationCurve]
}

extension Animation {
    static func getAnimationPresets() -> [Spring.AnimationPreset] {
        var animations: [Spring.AnimationPreset] = []
        
        for animation in Spring.AnimationPreset.allCases {
            animations.append(animation)
        }
        
        return animations
    }
    
    static func getAnimationCurves() -> [Spring.AnimationCurve] {
        var animations: [Spring.AnimationCurve] = []
        
        for animation in Spring.AnimationCurve.allCases {
            animations.append(animation)
        }
        
        return animations
    }

}
