//
//  ViewController.swift
//  Mercedes Benz
//
//  Created by Eleazar Canale on 8/14/17.
//  Copyright © 2017 Caliente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var MarcaLabel: UILabel!
    
    @IBAction func marca(_ sender: UIButton) {
        MarcaLabel.text = "Mercedes Benz"
    }

    @IBOutlet weak var ColorLabel: UILabel!
    
    @IBAction func Color(_ sender: Any) {
        ColorLabel.text = "Gris"
    }
    
    @IBOutlet weak var ImagenImage: UIImageView!
    
    
    @IBAction func Imagen(_ sender: Any) {
        ImagenImage.image = UIImage(named: "/Users/eleazarcanale/git/IOS/Mercedes Benz/Mercedes Benz/Unknown-1.jpeg")
    }
}

