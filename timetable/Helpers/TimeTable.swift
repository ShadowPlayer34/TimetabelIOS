import Foundation
//TODO: сделать для возвращения к стандартному расписанию
public class DefaultAllTimetableStructvar { var Monday = ["Физра", "Ин.яз", "ОТИС", "ППОИС"]
    var mondayTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var mondayCab = ["", "", "2 корпус 108 аудитория", "2 корпус 409 аудитория"]
    var mondayIsLecture = [false, false, true, true]

    var Tuesday = ["Дополнительные разделы физики", "Философия", "Ин.яз"]
    var tuesdayTime = ["14:00-15:20", "15:30 - 16:50", "17:00 - 18:20"]
    var tuesdayCab = ["1 корпус 402 аудитория", "5 корпус 307 аудитория", ""]
    var tuesdayIsLecture = [false, false, false]

    var Wednesday = ["БЖЧ", "Дополнительные разделы физики", "БЖЧ"]
    var wednesdayTime = ["12:10-13:30", "14:00-15:20", "15:30 - 16:50"]
    var wednesdayCab = ["1 корпус 401 аудитория", "1 корпус 443 аудитория", "1 корпус 412 аудитория"]
    var wednesdayIsLecture = [true, true, false]

    var Thursday = ["ОС", "ОТИС", "ОТИС"]
    var thursdayTime = ["12:10-13:30", "14:00-15:20", "15:30 - 16:50"]
    var thursdayCab = ["2 корпус 410б аудитория", "2 корпус 310 аудитория", "2 корпус 310 аудитория"]
    var thursdayIsLecture = [true, false, false]

    var Friday = ["Физра", "ОС", "ОС", "Ин.яз"]
    var fridayTime = ["12:10-13:30", "14:00-15:20", "15:30 - 16:50", "17:00 - 18:20"]
    var fridayCab = ["", "2 корпус 118 аудитория", "1 корпус 423 аудитория", ""]
    var fridayIsLecture = [false, false, false, false]

    var Saturday = ["Философия", "МОИС", "Численные методы", "Численные методы"]
    var saturdayTime = ["12:10-13:30", "14:00-15:20", "15:30 - 16:50", "17:00 - 18:20"]
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
    let Sunday = ["Chill"]
}


//MARK: - Standart timetable

public class AllTimetableClass: Codable{
   //MARK: - расписание для верхней недели
    var Monday = ["Физра", "Ин.яз", "ОТИС", "ППОИС"]
    var mondayTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var mondayCab = ["", "1 корпус 512а", "2 корпус 108 аудитория", "2 корпус 409 аудитория"]
    var mondayIsLecture = [false, false, true, true]
    
    var Tuesday = ["Ин.яз","Дополнительные разделы физики", "Философия"]
    var tuesdayTime = ["12:10-13:30","14:00-15:20", "15:30 - 16:50"]
    var tuesdayCab = ["1 корпус 417 аудитория","1 корпус 402 аудитория", "5 корпус 307 аудитория"]
    var tuesdayIsLecture = [false, false, false]
    
    var Wednesday = ["БЖЧ", "Дополнительные разделы физики", "БЖЧ"]
    var wednesdayTime = ["12:10-13:30", "14:00-15:20", "15:30 - 16:50"]
    var wednesdayCab = ["1 корпус 401 аудитория", "1 корпус 443 аудитория", "1 корпус 412 аудитория"]
    var wednesdayIsLecture = [true, true, false]
    
    var Thursday = ["ОС", "ОТИС", "ОТИС", "Ин.яз"]
    var thursdayTime = ["12:10-13:30", "14:00-15:20", "15:30 - 16:50", "17:00 - 18:20"]
    var thursdayCab = ["2 корпус 410б аудитория", "2 корпус 310 аудитория", "2 корпус 310 аудитория", "1 корпус 516 аудитория"]
    var thursdayIsLecture = [true, false, false, false]
    
    var Friday = ["Физра", "ОС", "ОС"]
    var fridayTime = ["12:10-13:30", "14:00-15:20", "15:30 - 16:50"]
    var fridayCab = ["", "2 корпус 118 аудитория", "1 корпус 423 аудитория"]
    var fridayIsLecture = [false, false, false]
    
    var Saturday = ["Философия", "МОИС", "Численные методы", "Численные методы"]
    var saturdayTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var saturdayCab = ["1 корпус 401 аудитория", "2 корпус 401а аудитория", "1 корпус 425 аудитория", "1 корпус 511 аудитория"]
    var saturdayIsLecture = [true, true, true, false]
    
    //MARK: - расписание для нижней недели
    var MondayLow = ["Физра", "Ин.яз", "ОТИC", "ППОИС"]
    var mondayLowTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var mondayLowCab = ["", "1 корпус 512а", "2 корпус 108 аудитория", "2 корпус 409 аудитория"]
    var mondayLowIsLecture = [false, false, true, true]
    
    var TuesdayLow = ["БЖЧ", "Философия", "Ин.яз", "ППОИС"]
    var tuesdayLowTime = ["14:00-15:20", "15:30 - 16:50", "17:00 - 18:20", "18:30-19:50"]
    var tuesdayLowCab = ["1 корпус 437 аудитория", "5 корпус 307 аудитория", "1 корпус 516 аудитория", "2 корпус 404 аудитория"]
    var tuesdayLowIsLecture = [false, false, false, false]
    
    var WednesdayLow = ["БЖЧ", "Дополнительные разделы физики"]
    var wednesdayLowTime = ["12:10-13:30", "14:00-15:20"]
    var wednesdayLowCab = ["1 корпус 401 аудитория", "1 корпус 443 аудитория"]
    var wednesdayLowIsLecture = [true, true]
    
    var ThursdayLow = ["Философия", "МОИС", "МОИС", "Ин.яз"]
    var thursdayLowTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var thursdayLowCab = ["1 корпус 443 аудитория", "2 корпус 118 аудитория", "2 корпус 118 аудитория", "1 корпус 516 аудитория"]
    var thursdayLowIsLecture = [true, false, false, false]
    
    var FridayLow = ["Физра", "ППОИС", "ППОИС"]
    var fridayLowTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50"]
    var fridayLowCab = ["", "2 корпус 406 аудитория", "2 корпус 406 аудитория"]
    var fridayLowIsLecture = [false, false, false]
    
    var SaturdayLow = ["Философия", "МОИС", "Численные методы", "Численные методы"]
    var saturdayLowTime = ["12:10-13:30", "14:00-15:20", "15:30-16:50", "17:00-18:20"]
    var saturdayLowCab = ["1 корпус 401 аудитория", "2 корпус 401а аудитория", "1 корпус 425 аудитория", "1 корпус 511 аудитория"]
    var saturdayLowIsLecture = [true, true, true, false]
    var Sunday = ["Отдых"]
    var typeOfWeek = "Нижняя"
    //MARK: - Выбор определенного дня недели
    func take(day: Int) -> ([String], [String], [String], [Bool]){
        typeOfWeekFunc()
        switch day{
        case 1:
                return (Sunday, [" - "], [""], [true])
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
    //расчет типа недели
    func typeOfWeekFunc(){
        let calendar = Calendar.current
        let firstDateComp = DateComponents(calendar: calendar, year: 2022, month: 9, day: 5)
        let date = Date()
        let dateToday = Calendar.current.dateComponents([.year, .month, .day], from: date)
        
        let diff = Calendar.current.dateComponents([.day], from: firstDateComp, to: dateToday)
        let diffDay = diff.day!
        if (diffDay / 7) % 2 == 0{
            typeOfWeek = "Нижняя"
        }else if  (diffDay / 7) % 2 == 1{
            typeOfWeek = "Верхняя"
        }
    }
    
    //расписание на сегодня
    func todayTimetable() -> String{
        let date = Date()
        var timetable = ""
        let weekdayToday = Calendar.current.component(.weekday, from: date)
        timetable = take(day: weekdayToday).0.joined(separator: "\n")

        return timetable
    }
   
    
    //расписание на завтра
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
//глобальная переменная через которую делается редактирование и в которой сохраняется расписание
public var timetable = AllTimetableClass()
