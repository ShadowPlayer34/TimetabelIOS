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
   
    var Monday = ["Физра", "Ин.яз", "ОТИС", "ППОИС"]
    var mondayTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var mondayCab = ["", "", "2 корпус 108 аудитория", "2 корпус 409 аудитория"]
    var mondayIsLecture = [false, false, true, true]
    
    var Tuesday = ["Дополнительные разделы физики", "Философия", "Ин.яз"]
    var tuesdayTime = ["14:00-15:20", "15:30 - 16:50", "17:00 - 18:20"]
    var tuesdayCab = ["1 корпус 402 аудитория", "5 корпус 307 аудитория", ""]
    var tuesdayIsLecture = [false, false, false]
    
    var Wednesday = ["БЖЧ", "Дополнительные разделы физики", "БЖЧ"]
    var wednesdayTime = ["12:10-13:30", "14:00-15:20", "(15:30 - 16:50)"]
    var wednesdayCab = ["1 корпус 401 аудитория", "1 корпус 443 аудитория", "1 корпус 412 аудитория"]
    var wednesdayIsLecture = [true, true, false]
    
    var Thursday = ["ОС", "ОТИС", "ОТИС"]
    var thursdayTime = ["12:10-13:30", "14:00-15:20", "(15:30 - 16:50)"]
    var thursdayCab = ["2 корпус 410б аудитория", "2 корпус 310 аудитория", "2 корпус 310 аудитория"]
    var thursdayIsLecture = [true, false, false]
    
    var Friday = ["Физра", "ОС", "ОС", "Ин.яз"]
    var fridayTime = ["12:10-13:30", "14:00-15:20", "(15:30 - 16:50)", "(17:00 - 18:20)"]
    var fridayCab = ["", "2 корпус 118 аудитория", "1 корпус 423 аудитория"]
    var fridayIsLecture = [false, false, false, false]
    
    var Saturday = ["Философия", "МОИС", "Численные методы", "Численные методы"]
    var saturdayTime = ["12:10-13:30", "14:00-15:20", "(15:30 - 16:50)", "(17:00 - 18:20)"]
    var saturdayCab = ["1 корпус 401 аудитория", "2 корпус 401а аудитория", "1 корпус 301 аудитория", "1 корпус 511 аудитория"]
    var saturdayIsLecture = [true, true, true, false]
    
    
    var MondayLow = ["Физра", "Ин.яз", "ОТИC", "ППОИС"]
    var mondayLowTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var mondayLowCab = ["", "", "2 корпус 108 аудитория", "2 корпус 409 аудитория"]
    var mondayLowIsLecture = [false, false, true, true]
    
    var TuesdayLow = ["БЖЧ", "Философия", "Ин.яз", "ППОИС"]
    var tuesdayLowTime = ["14:00-15:20", "(15:30 - 16:50)", "(17:00 - 18:20)", "18:30-19:50"]
    var tuesdayLowCab = ["1 корпус 437 аудитория", "5 корпус 307 аудитория", "", "2 корпус 404 аудитория"]
    var tuesdayLowIsLecture = [false, false, false, false]
    
    var WednesdayLow = ["БЖЧ", "Дополнительные разделы физики"]
    var wednesdayLowTime = ["12:10-13:30", "14:00-15:20"]
    var wednesdayLowCab = ["1 корпус 401 аудитория", "1 корпус 443 аудитория"]
    var wednesdayLowIsLecture = [true, true]
    
    var ThursdayLow = ["Философия", "МОИС", "МОИС", "Ин.яз"]
    var thursdayLowTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var thursdayLowCab = ["1 корпус 443 аудитория", "2 корпус 118 аудитория", "2 корпус 118 аудитория", ""]
    var thursdayLowIsLecture = [true, false, false, false]
    
    var FridayLow = ["Физра", "ППОИС", "ППОИС", "Ин.яз"]
    var fridayLowTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var fridayLowCab = ["", "2 корпус 406 аудитория", "2 корпус 406 аудитория", "1 корпус 423 аудитория"]
    var fridayLowIsLecture = [false, false, false, false]
    
    var SaturdayLow = ["Философия", "МОИС", "Численные методы", "Численные методы"]
    var saturdayLowTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var saturdayLowCab = ["1 корпус 401 аудитория", "2 корпус 401а аудитория", "1 корпус 301 аудитория", "1 корпус 511 аудитория"]
    var saturdayLowIsLecture = [true, true, true, false]
    let Sunday = ["Chill", ""]
    var typeOfWeek = "Нижняя"
    func take(day: Int) -> ([String], [String], [String], [Bool]){
        typeOfWeekFunc()
        switch day{
        case 1:
                return (Sunday, [" - ", " - "], ["", ""], [true])
        case 2:
            if typeOfWeek == "Верхняя"{
                return (Monday, mondayTime, mondayCab, mondayIsLecture) } else { return (MondayLow, mondayLowTime, mondayLowCab, mondayLowIsLecture) }
        case 3:
            if typeOfWeek == "Верхняя"{
                return (Tuesday, tuesdayTime, tuesdayCab, tuesdayIsLecture) } else { return (TuesdayLow, tuesdayLowTime, tuesdayLowCab, tuesdayLowIsLecture) }
        case 4:
            if typeOfWeek == "Верхняя"{
                return (Wednesday, wednesdayTime, wednesdayCab, wednesdayIsLecture) } else { return (WednesdayLow, wednesdayLowTime, wednesdayLowCab, wednesdayLowIsLecture) }
        case 5:
            if typeOfWeek == "Верхняя"{
                return (Thursday, thursdayTime, thursdayCab, thursdayIsLecture) } else { return (ThursdayLow, thursdayLowTime, thursdayLowCab, thursdayLowIsLecture) }
        case 6:
            if typeOfWeek == "Верхняя"{
                return (Friday, fridayTime, fridayCab, fridayIsLecture) } else { return (FridayLow, fridayLowTime, fridayLowCab, fridayLowIsLecture) }
        case 7:
            if typeOfWeek == "Верхняя"{
                return (Saturday, saturdayTime, saturdayCab, saturdayIsLecture) } else { return (SaturdayLow, saturdayLowTime, saturdayLowCab, saturdayLowIsLecture) }
        default:
            return ([""], [""], [""], [true])
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
    @IBOutlet weak var TypeOfFirstLesson: UILabel!
    @IBOutlet weak var StartTimeOfFirstLesson: UILabel!
    @IBOutlet weak var EndTimeOfFirstLesson: UILabel!
    @IBOutlet weak var CabOfFirstLesson: UILabel!
    @IBOutlet weak var SecondLessonLabel: UILabel!
    @IBOutlet weak var TypeOfSecondLesson: UILabel!
    @IBOutlet weak var StartTimeOfSecondLesson: UILabel!
    @IBOutlet weak var EndtTimeOfSecondLesson: UILabel!
    @IBOutlet weak var CabForSecondLesson: UILabel!
    @IBOutlet weak var ThirdLessonLabel: UILabel!
    @IBOutlet weak var TypeOfThirdLesson: UILabel!
    @IBOutlet weak var StartTimeOfThirdLesson: UILabel!
    @IBOutlet weak var EndTimeOfThirdLesson: UILabel!
    @IBOutlet weak var CabOfThirdLesson: UILabel!
    @IBOutlet weak var FourthLessonLabel: UILabel!
    @IBOutlet weak var TypeOfFourthLesson: UILabel!
    @IBOutlet weak var StartTimeOfFourthLesson: UILabel!
    @IBOutlet weak var EndTimeOfFourthLesson: UILabel!
    @IBOutlet weak var CabOfFourthLesson: UILabel!
    

    @IBOutlet weak var DayCountWeekTodayLabel: UILabel!
    @IBOutlet weak var WeekdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
//        backgroundImage.image = UIImage(named: "photo-1579546929518-9e396f3cc809")
//        backgroundImage.contentMode = .scaleAspectFill
//        view.insertSubview(backgroundImage, at: 0)
        
        TypeOfFirstLesson.backgroundColor = .orange
        TypeOfFirstLesson.layer.cornerRadius = 7
        TypeOfFirstLesson.layer.masksToBounds = true // разобраться с тенью
        TypeOfFirstLesson.layer.shadowOffset = CGSize(width: 3, height: 3)
        TypeOfFirstLesson.layer.shadowOpacity = 0.8
        TypeOfFirstLesson.layer.shadowRadius = 7
        TypeOfFirstLesson.layer.shadowColor = CGColor.init(srgbRed: 1, green: 0, blue: 0, alpha: 1)
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
        TypeOfFirstLesson.text = todayTimetable.3[0] ? "Лекция" : "Практика"
        
        SecondLessonLabel.text = todayTimetable.0[1]
        StartTimeOfSecondLesson.text = todayTimetable.1[1].components(separatedBy: "-")[0]
        EndtTimeOfSecondLesson.text = todayTimetable.1[1].components(separatedBy: "-")[1]
        CabForSecondLesson.text = todayTimetable.2[1]
        TypeOfSecondLesson.text = todayTimetable.3[1] ? "Лекция" : "Практика"
        
        if todayTimetable.0.indices.contains(2){
            ThirdLessonLabel.text = todayTimetable.0[2]
            StartTimeOfThirdLesson.text = todayTimetable.1[2].components(separatedBy: "-")[0]
            EndTimeOfThirdLesson.text = todayTimetable.1[2].components(separatedBy: "-")[1]
            CabOfThirdLesson.text = todayTimetable.2[2]
            TypeOfThirdLesson.text = todayTimetable.3[2] ? "Лекция" : "Практика"
        }
        
        if todayTimetable.0.indices.contains(3){
            FourthLessonLabel.text = todayTimetable.0[3]
            StartTimeOfFourthLesson.text = todayTimetable.1[3].components(separatedBy: "-")[0]
            EndTimeOfFourthLesson.text = todayTimetable.1[3].components(separatedBy: "-")[1]
            CabOfFourthLesson.text = todayTimetable.2[3]
            TypeOfFourthLesson.text = todayTimetable.3[3] ? "Лекция" : "Практика"
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


