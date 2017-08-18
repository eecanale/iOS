//
//  ViewController.swift
//  IOSLocalNotification
//
//  Created by Eleazar Canale on 8/17/17.
//  Copyright © 2017 Caliente. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) {
            (success, error) in
            if success {
                print("success")
            } else {
                print("error")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendNotification(_ sender: Any) {
        // 1 Definir Variable Content - Este contenido nos da en el Local Notification
        let content = UNMutableNotificationContent()
        content.title = "Notificación"
        content.subtitle = "from Caliente"
        content.body = "Notificaciones"
        
        
        // 2 Definir la imagen
        let imageName = "appleLogo"
        
        // Un guard nos permite realizar chequeos en el flujo de nuestro programa. Es como decir "para que el programa siga su ejecucion, necesito que esta condicion sea validada, de lo contrario, ejecuta el codigo de la clausula else
        
        guard let imageURL = Bundle.main.url(forResource: imageName, withExtension: "png")
            else { return }
        
        let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageURL, options: .none)
        content.attachments = [attachment]
        
        // 3 Definir trigger
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        
        let request = UNNotificationRequest(identifier: "notification.id.0L", content: content, trigger: trigger)
        
        // 4
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }

}

