//
//  ViewController.swift
//  timetable
//
//  Created by Андрей Худик on 30.08.22.
//

import UIKit
import AVFoundation

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
         timetable.typeOfWeekFunc()
        playMusic()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        showPresentation()
    }
    
    @IBAction func returnTutorialTapped(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "tutorial")
    }
    
    //функция для запуска обучалки
    func showPresentation() {
        if UserDefaults.standard.bool(forKey: "tutorial") == false{
            if let presentationVC = storyboard?.instantiateViewController(withIdentifier: "startup") as? StartupViewController{
                present(presentationVC, animated: true, completion: nil)
        }
        }
    }
    
    //функция для воспроизведения фоновой музыки
    func playMusic() {
        let musicBool = UserDefaults.standard.bool(forKey: "musicBool")
        print(musicBool)
        if musicBool == true {
            let music = UserDefaults.standard.string(forKey: "music")
            
            guard let music = music else {
                return
            }

            print(music)
            startMusic(pathForMusic: music, volume: {player.volume = UserDefaults.standard.float(forKey: "musicVolume")})
        }
    }
}

