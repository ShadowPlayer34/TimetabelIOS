//
//  NextLessonViewController.swift
//  timetable
//
//  Created by Андрей Худик on 30.08.22.
//

import UIKit


class NextLessonViewController: UIViewController {

    @IBOutlet weak var NextLessonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NextLessonLabel.text = nextLesson()
        
    }
    func nextLesson() -> String{
        let timetable = AllTimetableStruct()
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
        case 1210...1330:
            return todayTimetable[0]
        case 1400...1520:
            return todayTimetable[1]
        case 1530...1650:
            return todayTimetable[2]
        case 1700...1820:
            if todayTimetable.indices.contains(3){
                return todayTimetable[3]}else { return "Нету пары" }
        case 1830...1950:
            if todayTimetable.indices.contains(4){ //проверка на наличие данного индекса в массиве
                return todayTimetable[4]}else{return "Нету пары"}
        default:
            return "You can sleep🌙"
        }
    }

    

}
