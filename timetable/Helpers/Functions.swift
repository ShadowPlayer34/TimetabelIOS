//
//  Functions.swift
//  timetable
//
//  Created by Андрей Худик on 16.10.22.
//

import Foundation
import UIKit
import AVFoundation

//функция для стандартной настройки настройки кнопок
public func customButton(button: UIButton) {
    button.layer.cornerRadius = 10
    button.backgroundColor = UIColor(red: 0xB8, green: 0xC0, blue: 0xFF)
}

//функия для старта музыки
public func startMusic(pathForMusic: String, volume: (() -> ())?) {
    let path = Bundle.main.path(forResource: pathForMusic, ofType: "mp3")
    
    guard let path = path else {
        return
    }

    let url = URL(fileURLWithPath: path)
    do{
        try AVAudioSession.sharedInstance().setMode(.default)
        try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
        player = try AVAudioPlayer(contentsOf: url)
    
        (volume ?? { return print("") })()
    } catch {
        print("Error with music")
    }
    player.play()
}

public func takeData() -> AllTimetableClass {
    do {
        let data = UserDefaults.standard.object(forKey: "TimeTable") as? Data
        guard let data = data else { return timetable}
        let decode = try? JSONDecoder().decode(AllTimetableClass.self, from: data)
        guard let decode = decode else { return timetable }
        return decode
    } catch {
        print("Error with music")
    }
    
}
