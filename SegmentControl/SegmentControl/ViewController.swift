//
//  ViewController.swift
//  SegmentControl
//
//  Created by Eleazar Canale on 8/16/17.
//  Copyright © 2017 Caliente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBAction func infoChanged(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
            case 0:
            textLabel.text = "First Segment Selected"
            case 1:
            textLabel.text = "Second Segment Selected"
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

