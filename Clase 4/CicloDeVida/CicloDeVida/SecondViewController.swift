//
//  SecondViewController.swift
//  CicloDeVida
//
//  Created by Eleazar Canale on 8/17/17.
//  Copyright © 2017 Caliente. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var var1: UITextField!
    @IBOutlet weak var var2: UITextField!
    @IBOutlet weak var result: UITextField!
    
    @IBAction func Suma(_ sender: UIButton) {
        result.text = String(Int(var1.text!)! + Int(var2.text!)!)
    }
    
    @IBAction func Resta(_ sender: UIButton) {
        result.text = String(Int(var1.text!)! - Int(var2.text!)!)
    }
    
    @IBAction func Multi(_ sender: UIButton) {
        result.text = String(Int(var1.text!)! * Int(var2.text!)!)
    }
    
    @IBAction func Div(_ sender: UIButton) {
        result.text = String(Int(var1.text!)! / Int(var2.text!)!)
    }

}

