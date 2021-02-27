//
//  MainViewController.swift
//  HomeWork9
//
//  Created by ALEKSEY SUSLOV on 27.02.2021.
//

import Spring

class MainViewController: UIViewController {
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var runAnimationBtn: UIButton!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animation = Animation(randomly: true)
    
    @IBAction func runAnimationBtnPressed() {
        updateInfoOnLabels()
        animateSpringView()
        animation = Animation(randomly: true)
        runAnimationBtn.setTitle("Run - '\(animation.preset.rawValue)'", for: .normal)
    }
    
    private func animateSpringView() {
        springAnimationView.animation = animation.preset.rawValue
        springAnimationView.curve = animation.curve.rawValue
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.delay = CGFloat(animation.deley)
        springAnimationView.animate()
    }
    
    private func updateInfoOnLabels() {
        presetLabel.text = "preset: \(animation.preset.rawValue)"
        curveLabel.text = "curve: \(animation.curve.rawValue)"
        forceLabel.text = "force: " + String(format: "%.2f", animation.force)
        durationLabel.text = "duration: " + String(format: "%.2f", animation.duration)
        delayLabel.text = "delay: " + String(format: "%.2f", animation.deley)
    }
}
