//
//  MusicaViewController.swift
//  CicloDeVida
//
//  Created by Eleazar Canale on 8/17/17.
//  Copyright © 2017 Caliente. All rights reserved.
//

import UIKit
import AVFoundation

class MusicaViewController: UIViewController {
    
    var musica: AVAudioPlayer!
    
    @IBAction func playMusic(_ sender: UISwitch) {
        if sender.isOn{
            musica.setVolume(1, fadeDuration: 2)
        }else{
            musica.setVolume(0, fadeDuration: 2)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        guard let asset = NSDataAsset (name: "SampleAudio_0.5mb") else { print("Error loading audio");
            return  }
        
        do{
            musica = try AVAudioPlayer(data: asset.data)
        }catch{ print("Error loading initial audio")    }
        
        musica.volume = 0
        musica.numberOfLoops = -1
        musica.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
