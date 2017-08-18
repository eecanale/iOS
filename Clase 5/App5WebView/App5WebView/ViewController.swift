//
//  ViewController.swift
//  App5WebView
//
//  Created by Eleazar Canale on 8/18/17.
//  Copyright © 2017 Caliente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var textField: UITextField!
    
    var palabra:String?
    /*URL = https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=sega */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let google = URL(string: "https://www.google.com")
        
        webView.loadRequest(URLRequest(url: google!))
        
        // request.httpMethod = "POST"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buscar(_ sender: Any) {
        palabra = textField.text!
        let urlCompleto = "https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=\(palabra!)"
        let objetoUrl = URL(string:urlCompleto)
        
        //Peticion realizar tarea
        let tarea = URLSession.shared.dataTask(with: objetoUrl!) {(datos, respuesta, error) in
            if error != nil {
                print(error!)
            } else {
                do {
                    // Se obtiene objeto JSON dentro de la Ap
                    let json = try JSONSerialization.jsonObject(with: datos!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String:Any]
                    print(json)
                    
                    let querySubjson = json["query"] as! [String:Any]
                    print(querySubjson)
                    
                    let pagesSubjson = querySubjson["pages"] as! [String:Any]
                    print(pagesSubjson)
                    
                    let idSubjson = pagesSubjson["23597"] as! [String:Any]
                    print(idSubjson)
                    
                    let extractStringHtml = idSubjson["extract"] as! String
                    print(extractStringHtml)
                    
                    DispatchQueue.main.sync(execute: {
                        self.webView.loadHTMLString(extractStringHtml, baseURL: nil)
                    })
                    
                } catch {
                    print("El procesamiento del JSON tuvo un error")
                }
            }
        }
        tarea.resume()
    }

}

