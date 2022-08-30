//
//  TodayLessonsViewController.swift
//  timetable
//
//  Created by Андрей Худик on 30.08.22.
//

import UIKit
struct allTimetableStruct{
    let Monday = ["1. Физра (12:10 - 13:30)", "2. Ин.яз (14:00 - 15:20)", "3. Общая теория интелектуальных систем (15:30 - 16:50)Л", "4. Проектирование программного обеспечения ИС (17:00 - 18:20)Л"]
    let Tuesday = ["1. Спать🛌", "2. Дополнительные разделы физики/БЖЧ (14:00 - 15:20)", "3. Философия (15:30 - 16:50)", "4. Ин.яз (17:00 - 18:20)", "5. /ППОИС (18:30 - 19:50)"]
    let Wednesday = ["1. БЖЧ/ (12:10 - 13:30)Л", "2. Дополнительные разделы физики (14:00 - 15:20)Л", "3. /БЖЧ (15:30 - 16:50)"]
    let Thursday = ["1. Операционные системы/Философия (12:10 - 13:30)Л", "2. ОТИС/МОИС (14:00 - 15:20)", "3. ОТИС/МОИС (15:30 - 16:50)"]
    let Friday = ["1. Физра (12:10 - 13:30)", "2. ОС/ППОИС (14:00 - 15:20)", "3. ОС/ППОИС (15:30 - 16:50)", "4. Ин.яз (17:00 - 18:20)"]
    let Sunday = ["1. Философия (12:10 - 13:30)Л", "2. Математические основы ИС (14:00 - 15:20)Л", "3. Численные методы (15:30 - 16:50)Л", "4. Численные методы (17:00 - 18:20)"]
    let Saturday = ["Chill"]
    func take(day: Int) -> Array<String>{
        switch day{
        case 1:
            return Saturday
        case 2:
            return Monday
        case 3:
            return Tuesday
        case 4:
            return Wednesday
        case 5:
            return Thursday
        case 6:
            return Friday
        case 7:
            return Sunday
        default:
            return []
        }
    }
}


class TodayLessonsViewController: UIViewController {

    @IBOutlet weak var TimetableLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        TimetableLabel.text = todayTimetable()
        // Do any additional setup after loading the view.
    }
    func todayTimetable() -> String{
        let timetableStrc = allTimetableStruct()
        var timetable = ""
        let date = Date()
        let dateToday = Calendar.current.component(.weekday, from: date)
        timetable = timetableStrc.take(day: dateToday).joined(separator: "\n")
        return timetable
    }

}
