//
//  ViewController.swift
//  Acelerometro
//
//  Created by Eleazar Canale on 8/18/17.
//  Copyright © 2017 Caliente. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    // Lazy Es una tecnica para retrasar la creación de un objeto o algun otro proceso caro hasta que sea necesario
    lazy var motionManager = CMMotionManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if motionManager.isAccelerometerAvailable {
            _ = OperationQueue()
            motionManager.startAccelerometerUpdates(to: OperationQueue.main) { [weak self] (data: CMAccelerometerData?, error: Error?) in
                
                print("X = \(data?.acceleration.x)")
                print("X = \(data?.acceleration.y)")
                print("X = \(data?.acceleration.z)")
            }
        } else {
            print("No hay acelerometro")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

