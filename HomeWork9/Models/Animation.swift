//
//  Animation.swift
//  HomeWork9
//
//  Created by ALEKSEY SUSLOV on 27.02.2021.
//

struct Animation {
    let preset: Preset
    let curve: Curve
    let force: Double
    let duration: Double
    let deley: Double
    
    enum Preset: String, CaseIterable {
        case slideLeft
        case slideRight
        case slideDown
        case slideUp
        case squeezeLeft
        case squeezeRight
        case squeezeDown
        case squeezeUp
        case fadeIn
        case fadeOut
        case fadeOutIn
        case fadeInLeft
        case fadeInRight
        case fadeInDown
        case fadeInUp
        case zoomIn
        case zoomOut
        case fall
        case shake
        case pop
        case flipX
        case flipY
        case morph
        case squeeze
        case flash
        case wobble
        case swing
        
        static func random<G: RandomNumberGenerator>(using generator: inout G) -> Preset {
                return Preset.allCases.randomElement(using: &generator)!
        }

        static func random() -> Preset {
            var g = SystemRandomNumberGenerator()
            return Preset.random(using: &g)
        }
    }
    
    enum Curve: String, CaseIterable {
        case easeIn
        case easeOut
        case easeInOut
        case linear
        case spring
        case easeInSine
        case easeOutSine
        case easeInOutSine
        case easeInQuad
        case easeOutQuad
        case easeInOutQuad
        case easeInCubic
        case easeOutCubic
        case easeInOutCubic
        case easeInQuart
        case easeOutQuart
        case easeInOutQuart
        case easeInQuint
        case easeOutQuint
        case easeInOutQuint
        case easeInExpo
        case easeOutExpo
        case easeInOutExpo
        case easeInCirc
        case easeOutCirc
        case easeInOutCirc
        case easeInBack
        case easeOutBack
        case easeInOutBack
        
        static func random<G: RandomNumberGenerator>(using generator: inout G) -> Curve {
                return Curve.allCases.randomElement(using: &generator)!
        }

        static func random() -> Curve {
            var g = SystemRandomNumberGenerator()
            return Curve.random(using: &g)
        }
    }
    
    init(randomly: Bool) {
        preset = Preset.random()
        curve = Curve.random()
        force = Double.random(in: 0...1)
        duration = Double.random(in: 0...1)
        deley = Double.random(in: 0...1)
    }
}