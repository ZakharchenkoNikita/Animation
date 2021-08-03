//
//  MainViewController.swift
//  Animation
//
//  Created by Nikita on 03.08.21.
//

import Spring

class MainViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
    
    @IBOutlet weak var presentTextLabel: UILabel!
    @IBOutlet weak var curveTextLabel: UILabel!
    
    @IBOutlet weak var animationButton: UIButton!
    
    let presents = Animation.getAnimationPresets()
    let curves = Animation.getAnimationCurves()
    
    private var presentsCounter = 0
    private var curvesCounter = 0

    @IBAction func animationButtonPressed() {
       startAnimation()
    }
    
    private func startAnimation() {
        presentTextLabel.text = presents[presentsCounter].rawValue
        curveTextLabel.text = curves[curvesCounter].rawValue
        
        animationView.animation = presents[presentsCounter].rawValue
        animationView.curve = curves[curvesCounter].rawValue
        animationView.force = 2
        animationView.duration = 1
        animationView.delay = 0.3
        
        animationView.animate()
        
        presentsCounter += 1
        curvesCounter = presentsCounter
        
        if presentsCounter == presents.count {
            presentsCounter = 0
        }
        
        animationButton.setTitle(presents[presentsCounter].rawValue, for: .normal)
    }
}

