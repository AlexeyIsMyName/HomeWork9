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
    
    @IBAction func runAnimationBtnPressed() {
        runAnimationBtn.setTitle("Done", for: .normal)
    }
}
