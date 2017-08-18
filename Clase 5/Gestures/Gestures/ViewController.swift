//
//  ViewController.swift
//  Gestures
//
//  Created by Eleazar Canale on 8/18/17.
//  Copyright © 2017 Caliente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func aceptar(_ sender: Any) {
        print("ok")
    }
    
    @IBAction func cancelar(_ sender: Any) {
        print("cancelar")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.hideKeyboardWhenTappingAround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


// Para agregar funciones dentro del background, de las vistas utilizas la sintaxis extension + UI (X)
extension UIViewController {
        
    // Determina un método dentro de la función
    func hideKeyboardWhenTappingAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismisKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismisKeyboard() {
        view.endEditing(true)
    }
}
