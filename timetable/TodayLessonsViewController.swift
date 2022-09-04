//
//  TodayLessonsViewController.swift
//  timetable
//
//  Created by Андрей Худик on 30.08.22.
//

import UIKit
import QuartzCore


class DefaultAllTimetableStruct{
   
    var Monday = ["Физра (12:10 - 13:30)", "Ин.яз (14:00 - 15:20)", "Общая теория интелектуальных систем 2/108 (15:30 - 16:50) Л", "Проектирование программного обеспечения ИС 2/409 (17:00 - 18:20)Л"]
    var Tuesday = ["1. Спать🛌", "2. Дополнительные разделы физики 402/БЖЧ 437 (14:00 - 15:20)", "3. Философия 5/307 (15:30 - 16:50)", "4. Ин.яз (17:00 - 18:20)", "5. /ППОИС 2/404 (18:30 - 19:50)"]
    var Wednesday = ["1. БЖЧ 401 (12:10 - 13:30)Л", "2. Дополнительные разделы физики 443 (14:00 - 15:20)Л", "3. /БЖЧ 412 (15:30 - 16:50)"]
    var Thursday = ["1. Операционные системы 2/410б /Философия 443 (12:10 - 13:30)Л", "2. ОТИС 2/310 /МОИС 2/118 (14:00 - 15:20)", "3. ОТИС 2/310 /МОИС 2/118 (15:30 - 16:50)"]
    var Friday = ["1. Физра (12:10 - 13:30)", "2. ОС 2/118 /ППОИС 2/406 (14:00 - 15:20)", "3. ОС 2/118/ППОИС 2/406 (15:30 - 16:50)", "4. Ин.яз 423 (17:00 - 18:20)"]
    var Saturday = ["1. Философия 401 (12:10 - 13:30)Л", "2. Математические основы ИС 2/401а (14:00 - 15:20)Л", "3. Численные методы 301 (15:30 - 16:50)Л", "4. Численные методы 511 (17:00 - 18:20)"]
    let Sunday = ["Chill"]
    
}

class AllTimetableStruct{
   
    var Monday = ["Физра", "Ин.яз", "ОТИС(2/108)Л", "ППОИС(2/409)Л"]
    var mondayTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var mondayCab = ["", "", "2 корпус аудитория 108", "2 корпус аудитория 409"]
    
    var Tuesday = ["Дополнительные разделы физики (402)", "Философия (5/307)", "Ин.яз"]
    var tuesdayTime = ["14:00-15:20", "(15:30 - 16:50)", "(17:00 - 18:20)"]
    var tuesdayCab = ["", "", "", "", ""]
    
    var Wednesday = ["БЖЧ (401)Л", "Дополнительные разделы физики (443)Л", "БЖЧ (412)"]
    var wednesdayTime = ["12:10-13:30", "14:00-15:20", "(15:30 - 16:50)"]
    var wednesdayCab = ["", "", "", "", ""]
    
    var Thursday = ["ОС(2/410б)Л", "ОТИС (2/310)", "ОТИС (2/310)"]
    var thursdayTime = ["12:10-13:30", "14:00-15:20", "(15:30 - 16:50)"]
    var thursdayCab = ["", "", "", "", ""]
    
    var Friday = ["Физра", "ОС (2/118)", "ОС (2/118)", "Ин.яз (423)"]
    var fridayTime = ["12:10-13:30", "14:00-15:20", "(15:30 - 16:50)", "(17:00 - 18:20)"]
    var fridayCab = ["", "", "", "", ""]
    
    var Saturday = ["Философия (401))Л", "МОИС(2/401а)Л", "Численные методы (301)Л", "Численные методы (511)"]
    var saturdayTime = ["12:10-13:30", "14:00-15:20", "(15:30 - 16:50)", "(17:00 - 18:20)"]
    var saturdayCab = ["", "", "", "", ""]
    
    
    var MondayLow = ["Физра", "Ин.яз", "ОТИС(2/108)Л", "ППОИС(2/409)Л"]
    var mondayLowTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var mondayLowCab = ["", "", "", "", ""]
    
    var TuesdayLow = ["БЖЧ (437)", "Философия (5/307)", "4. Ин.яз", "5. ППОИС (2/404)"]
    var tuesdayLowTime = ["14:00-15:20", "(15:30 - 16:50)", "(17:00 - 18:20)", "18:30-19:50"]
    var tuesdayLowCab = ["", "", "", "", ""]
    
    var WednesdayLow = ["БЖЧ (401)Л", "Дополнительные разделы физики (443)Л"]
    var wednesdayLowTime = ["12:10-13:30", "14:00-15:20"]
    var wednesdayLowCab = ["", "", "", "", ""]
    
    var ThursdayLow = ["Философия (443)Л", "МОИС (2/118)", "МОИС (2/118)", "Ин.яз"]
    var thursdayLowTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var thursdayLowCab = ["", "", "", "", ""]
    
    var FridayLow = ["Физра", "ППОИС (2/406)", "ППОИС (2/406)", "Ин.яз (423)"]
    var fridayLowTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var fridayLowCab = ["", "", "", "", ""]
    
    var SaturdayLow = ["Философия (401)Л", "МОИС(2/401а)Л", "Численные методы (301)Л", "Численные методы (511)"]
    var saturdayLowTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var saturdayLowCab = ["", "", "", "", ""]
    let Sunday = ["Chill", ""]
    var typeOfWeek = "Нижняя"
    func take(day: Int) -> ([String], [String], [String]){
        typeOfWeekFunc()
        switch day{
        case 1:
                return (Sunday, [" - ", " - "], ["", ""])
        case 2:
            if typeOfWeek == "Верхняя"{
                return (Monday, mondayTime, mondayCab) } else { return (MondayLow, mondayLowTime, mondayLowCab) }
        case 3:
            if typeOfWeek == "Верхняя"{
                return (Tuesday, tuesdayTime, tuesdayCab) } else { return (TuesdayLow, tuesdayLowTime, tuesdayLowCab) }
        case 4:
            if typeOfWeek == "Верхняя"{
                return (Wednesday, wednesdayTime, wednesdayCab) } else { return (WednesdayLow, wednesdayLowTime, wednesdayLowCab) }
        case 5:
            if typeOfWeek == "Верхняя"{
                return (Thursday, thursdayTime, thursdayCab) } else { return (ThursdayLow, thursdayLowTime, thursdayLowCab) }
        case 6:
            if typeOfWeek == "Верхняя"{
                return (Friday, fridayTime, fridayCab) } else { return (FridayLow, fridayLowTime, fridayLowCab) }
        case 7:
            if typeOfWeek == "Верхняя"{
                return (Saturday, saturdayTime, saturdayCab) } else { return (SaturdayLow, saturdayLowTime, saturdayLowCab) }
        default:
            return ([""], [""], [""])
        }
    }
    init(){}
    init(Monday: [String]){
        self.Monday = Monday
    }
    func typeOfWeekFunc(){
        let calendar = Calendar.current
        let firstDateComp = DateComponents(calendar: calendar, year: 2022, month: 9, day: 5)
        let date = Date()
        let dateToday = Calendar.current.dateComponents([.year, .month, .day], from: date)
        
        let diff = Calendar.current.dateComponents([.day], from: firstDateComp, to: dateToday)
        let diffDay = diff.day!
        print(diffDay)
        if diffDay % 7 == 0 || (diffDay / 7) % 2 == 0{
            typeOfWeek = "Нижняя"
        }else if diffDay % 7 == 0 || (diffDay / 7) % 2 == 1{
            typeOfWeek = "Верхняя"
        }
    }
    func todayTimetable() -> String{
        let date = Date()
        var timetable = ""
        let weekdayToday = Calendar.current.component(.weekday, from: date)
        timetable = take(day: weekdayToday).0.joined(separator: "\n")

        return timetable
    }
   
    func yesterdayTimetable() -> String {
        var timetable = ""
        let date = Date()
        var dateToday = Calendar.current.component(.weekday, from: date) + 1
        if dateToday == 7{
            dateToday = 1
        }
        timetable = take(day: dateToday).0.joined(separator: "\n")

        return timetable
    }

}

class TodayLessonsViewController: UIViewController{
    
   
    @IBOutlet weak var FirstLessonLabel: UILabel!
    @IBOutlet weak var StartTimeOfFirstLesson: UILabel!
    @IBOutlet weak var EndTimeOfFirstLesson: UILabel!
    @IBOutlet weak var CabOfFirstLesson: UILabel!
    @IBOutlet weak var SecondLessonLabel: UILabel!
    @IBOutlet weak var StartTimeOfSecondLesson: UILabel!
    @IBOutlet weak var EndtTimeOfSecondLesson: UILabel!
    @IBOutlet weak var CabForSecondLesson: UILabel!
    @IBOutlet weak var ThirdLessonLabel: UILabel!
    @IBOutlet weak var StartTimeOfThirdLesson: UILabel!
    @IBOutlet weak var EndTimeOfThirdLesson: UILabel!
    @IBOutlet weak var CabOfThirdLesson: UILabel!
    @IBOutlet weak var FourthLessonLabel: UILabel!
    @IBOutlet weak var StartTimeOfFourthLesson: UILabel!
    @IBOutlet weak var EndTimeOfFourthLesson: UILabel!
    @IBOutlet weak var CabOfFourthLesson: UILabel!
    
    @IBOutlet weak var TypeOfLessonLabel1: UILabel!
    @IBOutlet weak var DayCountWeekTodayLabel: UILabel!
    @IBOutlet weak var WeekdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
//        backgroundImage.image = UIImage(named: "photo-1579546929518-9e396f3cc809")
//        backgroundImage.contentMode = .scaleAspectFill
//        view.insertSubview(backgroundImage, at: 0)
        
        TypeOfLessonLabel1.backgroundColor = .orange
        TypeOfLessonLabel1.layer.cornerRadius = 7
        TypeOfLessonLabel1.layer.masksToBounds = true // разобраться с тенью
        let numberOfWeek = Calendar.current.component(.weekday, from: Date())
        WeekdayLabel.text = Calendar.current.WeekdayName(of: numberOfWeek)
//        WeekdayLabel.layer.shadowOpacity = 0.08
        let todayTimetable = AllTimetableStruct().take(day: numberOfWeek)
        let date = Date()
        let format = "dd MMMM"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format

        let str = dateFormatter.string(from: date)
        DayCountWeekTodayLabel.text = "\(str) • \(AllTimetableStruct().take(day: numberOfWeek).0.endIndex) пары • \(AllTimetableStruct().typeOfWeek) неделя"
        
        FirstLessonLabel.text = todayTimetable.0[0]
        StartTimeOfFirstLesson.text = todayTimetable.1[0].components(separatedBy: "-")[0]
        EndTimeOfFirstLesson.text = todayTimetable.1[0].components(separatedBy: "-")[1]
        CabOfFirstLesson.text = todayTimetable.2[0]
        
        SecondLessonLabel.text = todayTimetable.0[1]
        StartTimeOfSecondLesson.text = todayTimetable.1[1].components(separatedBy: "-")[0]
        EndtTimeOfSecondLesson.text = todayTimetable.1[1].components(separatedBy: "-")[1]
        CabForSecondLesson.text = todayTimetable.2[1]
        
        if todayTimetable.0.indices.contains(2){
            ThirdLessonLabel.text = todayTimetable.0[2]
            StartTimeOfThirdLesson.text = todayTimetable.1[2].components(separatedBy: "-")[0]
            EndTimeOfThirdLesson.text = todayTimetable.1[2].components(separatedBy: "-")[1]
            CabOfThirdLesson.text = todayTimetable.2[2]
        }
        
        if todayTimetable.0.indices.contains(3){
            FourthLessonLabel.text = todayTimetable.0[3]
            StartTimeOfFourthLesson.text = todayTimetable.1[3].components(separatedBy: "-")[0]
            EndTimeOfFourthLesson.text = todayTimetable.1[3].components(separatedBy: "-")[1]
            CabOfFourthLesson.text = todayTimetable.2[3]
        }
    }
    
//    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
//        guard let destinationVC = seque.destination as? EditTimetableViewController else { return }
//        allTimetable = destinationVC.alltimetable
//    }
    
    }

extension Calendar{
    func WeekdayName(of numberWeekDay: Int) -> String{
        switch numberWeekDay{
        case 1:
            return "Воскресенье"
        case 2:
            return "Понедельник"
        case 3:
            return "Вторник"
        case 4:
            return "Среда"
        case 5:
            return "Четверг"
        case 6:
            return "Пятница"
        case 7:
            return "Суббота"
        default:
            return ""
        }
        
    }
}


