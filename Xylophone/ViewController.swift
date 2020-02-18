//
//  ViewController.swift
//  Xylophone
//
//  Created by Siavash Jalali on 2020/02/18.
//  Copyright © 2020 Shichan Official. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.alpha = 0.75
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            sender.alpha = 1
        }
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

