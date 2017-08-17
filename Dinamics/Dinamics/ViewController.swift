//
//  ViewController.swift
//  Dinamics
//
//  Created by Eleazar Canale on 8/16/17.
//  Copyright © 2017 Caliente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var girar: UIButton!
    
    var animator:   UIDynamicAnimator!
    var snapBehavior: UISnapBehavior!
    
    @IBAction func onTap(_ sender: Any) {
        UIView.animate(withDuration: 2.0, animations: {
            self.image.transform =
                CGAffineTransform(rotationAngle: (100 * .pi) /
                    100)
        })
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Crea Tap Gesture Recognizer
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(userHasTapped))
        self.view.addGestureRecognizer(tapGesture)
        
        // Crea TabDynamics
        animator = UIDynamicAnimator(referenceView: self.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func userHasTapped(tap: UITapGestureRecognizer) {
        let touchPoint = tap.location(in: self.view)
        if (snapBehavior != nil) {
            animator.removeBehavior(snapBehavior)
        }
        snapBehavior = UISnapBehavior(item: image, snapTo: touchPoint)
        
    }
}

