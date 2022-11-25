//
//  SettingsViewController.swift
//  timetable
//
//  Created by Андрей Худик on 17.10.22.
//

import UIKit
import AVFoundation

let music = ["Ambient", "Lofi", "Piano"]
var player = AVAudioPlayer()
class SettingsViewController: UIViewController {
  
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var settingsBarItem: UITabBarItem!
    @IBOutlet weak var volumeSlider: UISlider!
    @IBOutlet weak var stopMusicButton: UIButton!
    @IBOutlet weak var musicTableView: UITableView!
    @IBOutlet weak var selectMusicLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        secretGesture()
        musicTableView.delegate = self
        musicTableView.dataSource = self
        customButton(button: stopMusicButton)
        customButton(button: editButton)
        createSlider()

    }
    
    //настройка слайдера
    func createSlider() {
        volumeSlider.minimumValue = 0
        volumeSlider.maximumValue = 1
        volumeSlider.value = UserDefaults.standard.float(forKey: "musicVolume")
        volumeSlider.addTarget(self, action: #selector(changeVolume(sender:)), for: .valueChanged)
    }
    //MARK: - gesture for present developer settings
    func secretGesture() {
            let tenthTap = UITapGestureRecognizer(target: self, action: #selector(tenthTapMethod))
            tenthTap.numberOfTapsRequired = 10
            view.addGestureRecognizer(tenthTap)
    }
    
    @objc func tenthTapMethod() {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "developerSettings") as? FirstViewController {
            present(controller, animated: true, completion: nil)
        }
    }
    //MARK: - some settings for background music
    //изменение громкости фоновой музыки
    @objc func changeVolume(sender: UISlider) {
        if sender == volumeSlider {
            player.volume = sender.value
        }
        UserDefaults.standard.set(sender.value, forKey: "musicVolume")
    }
    //остановка фоновой музыки
    @IBAction func stopMusicTapped(_ sender: Any) {
        player.stop()
        UserDefaults.standard.set(false, forKey: "musicBool")
    }
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    //MARK: - настройка tableView
    func numberOfSections(in tableView: UITableView) -> Int {
        return music.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath) as! MusicTableViewCell
        cell.nameOfMusicLabel.text = music[indexPath.section]
        cell.imageOfMusicImageView.image = UIImage(named: music[indexPath.section])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //MARK: - запуск музыки при нажатии
        
        startMusic(pathForMusic: music[indexPath.section], volume: nil)
        UserDefaults.standard.set(music[indexPath.section], forKey: "music")
        UserDefaults.standard.set(true, forKey: "musicBool")
    }
    
}
