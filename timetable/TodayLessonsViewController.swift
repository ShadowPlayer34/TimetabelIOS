//
//  TodayLessonsViewController.swift
//  timetable
//
//  Created by Андрей Худик on 30.08.22.
//

import UIKit


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
    var tuesdayLowTime = ["14:00-15:20", "15:30 - 16:50", "17:00 - 18:20", "18:30-19:50"]
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

class TodayLessonsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
   
    @IBOutlet weak var TodayTimetableTableView: UITableView!
    @IBOutlet weak var DayCountWeekTodayLabel: UILabel!
    @IBOutlet weak var WeekdayLabel: UILabel!
    
    let numberOfWeek = Calendar.current.component(.weekday, from: Date())
    let allTimetable = AllTimetableStruct().take(day: Calendar.current.component(.weekday, from: Date()))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TodayTimetableTableView.dataSource = self
        TodayTimetableTableView.delegate = self
//        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
//        backgroundImage.image = UIImage(named: "photo-1579546929518-9e396f3cc809")
//        backgroundImage.contentMode = .scaleAspectFill
//        view.insertSubview(backgroundImage, at: 0)
        
        WeekdayLabel.text = Calendar.current.WeekdayName(of: numberOfWeek)
        let date = Date()
        let format = "dd MMMM"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format

        let str = dateFormatter.string(from: date)
        DayCountWeekTodayLabel.text = "\(str) • \(AllTimetableStruct().take(day: numberOfWeek).0.endIndex) пары • \(AllTimetableStruct().typeOfWeek) неделя"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return allTimetable.0.endIndex
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
           let headerView = UIView()
           headerView.backgroundColor = UIColor.clear
           return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TodayTimetableTableView.dequeueReusableCell(withIdentifier: "Lesson", for: indexPath) as! LessonTableViewCell
        cell.StartTimeLabel.text = allTimetable.1[indexPath.section].components(separatedBy: "-")[0]
        cell.EndTimeLabel.text = allTimetable.1[indexPath.section].components(separatedBy: "-")[1]
        cell.LesssonLabel.text = allTimetable.0[indexPath.section]
        cell.DescriptionLessonLabel.text = allTimetable.2[indexPath.section]
        cell.backgroundColor = allTimetable.3[indexPath.section] ? UIColor(red: 0xFF, green: 0xB7, blue: 0x03) : UIColor(red: 0x8E, green: 0xCA, blue: 0xE6)
        cell.layer.cornerRadius = 10
        return cell
    }
    
}

public extension Calendar{
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


