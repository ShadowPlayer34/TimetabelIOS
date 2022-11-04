//
//  NextLessonViewController.swift
//  timetable
//
//  Created by Андрей Худик on 30.08.22.
//

import UIKit


class NextLessonViewController: UIViewController {


    
 
    @IBOutlet weak var NextLessonLabel: UILabel!
    @IBOutlet weak var StartTimeOfNextLesson: UILabel!
    @IBOutlet weak var EndTimeOfNextLesson: UILabel!
    @IBOutlet weak var CabOfNextLessson: UILabel!
    @IBOutlet weak var NextLessonStack: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NextLessonStack.layer.cornerRadius = 10
        (NextLessonLabel.text, StartTimeOfNextLesson.text, EndTimeOfNextLesson.text, CabOfNextLessson.text) = nextLesson()
    }
    
    func nextLesson() -> (String, String, String, String){
        let timetable = AllTimetableClass()
        let date = Date()
        let dateToday = Calendar.current.component(.weekday, from: date)
        let formatter = DateFormatter() // все ниже сделано для получение коректного времени
        let locale = Locale(identifier: "ru_RU") // регион для получения 24 формата
        formatter.locale = locale
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        let time = formatter.string(from: Date())
        let timeNow = time.components(separatedBy: ":")
        let timeNowInt = Int(timeNow[0] + timeNow[1])!
      
        let todayTimetable = timetable.take(day: dateToday) //получение нужного дня
        switch timeNowInt{
        case 1000...1209:
            NextLessonStack.backgroundColor = todayTimetable.3[0] ? UIColor(red: 0xFF, green: 0xB7, blue: 0x03) : UIColor(red: 0x8E, green: 0xCA, blue: 0xE6)
            return (todayTimetable.0[0],
            todayTimetable.1[0].components(separatedBy: "-")[0],
            todayTimetable.1[0].components(separatedBy: "-")[1],
            todayTimetable.2[0])
        case 1210...1359:
            NextLessonStack.backgroundColor = todayTimetable.3[1] ? UIColor(red: 0xFF, green: 0xB7, blue: 0x03) : UIColor(red: 0x8E, green: 0xCA, blue: 0xE6)
            return (todayTimetable.0[1],
            todayTimetable.1[1].components(separatedBy: "-")[0],
            todayTimetable.1[1].components(separatedBy: "-")[1],
            todayTimetable.2[1])
        case 1400...1529:
            NextLessonStack.backgroundColor = todayTimetable.3[2] ? UIColor(red: 0xFF, green: 0xB7, blue: 0x03) : UIColor(red: 0x8E, green: 0xCA, blue: 0xE6)
            return (todayTimetable.0[2],
            todayTimetable.1[2].components(separatedBy: "-")[0],
            todayTimetable.1[2].components(separatedBy: "-")[1],
            todayTimetable.2[2])
        case 1530...1659:
            NextLessonStack.backgroundColor = todayTimetable.3[3] ? UIColor(red: 0xFF, green: 0xB7, blue: 0x03) : UIColor(red: 0x8E, green: 0xCA, blue: 0xE6)
            if todayTimetable.0.indices.contains(3){
                return (todayTimetable.0[3],
                todayTimetable.1[3].components(separatedBy: "-")[0],
                todayTimetable.1[3].components(separatedBy: "-")[1],
                todayTimetable.2[3])
            }else { NextLessonLabel.text = "Нету пары" }
        case 1700...1820:
            if todayTimetable.0.indices.contains(4){ //проверка на наличие данного индекса в массиве
                return (todayTimetable.0[4],
                todayTimetable.1[4].components(separatedBy: "-")[0],
                todayTimetable.1[4].components(separatedBy: "-")[1],
                todayTimetable.2[4])
            }else{return ("Нету пары", "", "", "")}
        default:
            return ("You can sleep🌙", "", "", "")
        }
        return ("", "", "", "")
    }

    

}
