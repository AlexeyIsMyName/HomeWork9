//
//  MainViewController.swift
//  HomeWork9
//
//  Created by ALEKSEY SUSLOV on 27.02.2021.
//

import Spring

class MainViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var runAnimationBtn: UIButton!
    @IBOutlet var springLabels: [SpringLabel]!
    
    // MARK: - Private properties
    private var animation = Animation(random: true)
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        updateInfoOnLabels()
    }
    
    // MARK: - IB Actions
    @IBAction func runAnimationBtnPressed() {
        animateSpringLabels()
        updateInfoOnLabels()
        animateSpringView()
        animation = Animation(random: true)
        runAnimationBtn.setTitle("Run - '\(animation.preset.rawValue)'", for: .normal)
    }
    
    // MARK: - Private methods
    private func animateSpringView() {
        springAnimationView.animation = animation.preset.rawValue
        springAnimationView.curve = animation.curve.rawValue
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.delay = CGFloat(animation.deley)
        springAnimationView.animate()
    }
    
    private func updateInfoOnLabels() {
        for springLabel in springLabels {
            switch springLabel.tag {
            case 1: springLabel.text = "preset: \(animation.preset.rawValue)"
            case 2: springLabel.text = "curve: \(animation.curve.rawValue)"
            case 3: springLabel.text = "force: " + String(format: "%.2f", animation.force)
            case 4: springLabel.text = "duration: " + String(format: "%.2f", animation.duration)
            default: springLabel.text = "delay: " + String(format: "%.2f", animation.deley)
            }
        }
    }
    
    private func animateSpringLabels() {
        // Анимация чтоб текст на лейблах обновлялся на глазах не резко
        for springLabel in springLabels {
            springLabel.animation = "fadeIn"
            springLabel.duration = 2
            springLabel.animate()
        }
    }
}
