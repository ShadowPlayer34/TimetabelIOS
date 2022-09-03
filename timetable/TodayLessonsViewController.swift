//
//  TodayLessonsViewController.swift
//  timetable
//
//  Created by Андрей Худик on 30.08.22.
//

import UIKit


class DefaultAllTimetableStruct{
   
    var Monday = ["1. Физра (12:10 - 13:30)", "2. Ин.яз (14:00 - 15:20)", "3. Общая теория интелектуальных систем 2/108 (15:30 - 16:50) Л", "4. Проектирование программного обеспечения ИС 2/409 (17:00 - 18:20)Л"]
    var Tuesday = ["1. Спать🛌", "2. Дополнительные разделы физики 402/БЖЧ 437 (14:00 - 15:20)", "3. Философия 5/307 (15:30 - 16:50)", "4. Ин.яз (17:00 - 18:20)", "5. /ППОИС 2/404 (18:30 - 19:50)"]
    var Wednesday = ["1. БЖЧ 401 (12:10 - 13:30)Л", "2. Дополнительные разделы физики 443 (14:00 - 15:20)Л", "3. /БЖЧ 412 (15:30 - 16:50)"]
    var Thursday = ["1. Операционные системы 2/410б /Философия 443 (12:10 - 13:30)Л", "2. ОТИС 2/310 /МОИС 2/118 (14:00 - 15:20)", "3. ОТИС 2/310 /МОИС 2/118 (15:30 - 16:50)"]
    var Friday = ["1. Физра (12:10 - 13:30)", "2. ОС 2/118 /ППОИС 2/406 (14:00 - 15:20)", "3. ОС 2/118/ППОИС 2/406 (15:30 - 16:50)", "4. Ин.яз 423 (17:00 - 18:20)"]
    var Sunday = ["1. Философия 401 (12:10 - 13:30)Л", "2. Математические основы ИС 2/401а (14:00 - 15:20)Л", "3. Численные методы 301 (15:30 - 16:50)Л", "4. Численные методы 511 (17:00 - 18:20)"]
    let Saturday = ["Chill"]
    
}

class AllTimetableStruct{
   
    var Monday = ["1. Физра \n(12:10 - 13:30)\n", "2. Ин.яз \n(14:00 - 15:20)\n", "3. Общая теория интелектуальных систем (2/108) \n(15:30 - 16:50)Л\n", "4. Проектирование программного обеспечения ИС (2/409) \n(17:00 - 18:20)Л"]
    var Tuesday = ["1. Спать🛌\n", "2. Дополнительные разделы физики (402) / БЖЧ (437) \n(14:00 - 15:20)\n", "3. Философия (5/307) \n(15:30 - 16:50)\n", "4. Ин.яз \n(17:00 - 18:20)\n", "5. / ППОИС (2/404) \n(18:30 - 19:50)"]
    var Wednesday = ["1. БЖЧ (401) \n(12:10 - 13:30)Л\n", "2. Дополнительные разделы физики (443) \n(14:00 - 15:20)Л\n", "3. / БЖЧ (412) \n(15:30 - 16:50)\n"]
    var Thursday = ["1. Операционные системы (2/410б) / Философия (443) \n(12:10 - 13:30)Л\n", "2. ОТИС (2/310) / МОИС (2/118) \n(14:00 - 15:20)\n", "3. ОТИС (2/310) / МОИС (2/118) \n(15:30 - 16:50)\n"]
    var Friday = ["1. Физра \n(12:10 - 13:30)\n", "2. ОС (2/118) / ППОИС (2/406) \n(14:00 - 15:20)\n", "3. ОС (2/118) / ППОИС (2/406) \n(15:30 - 16:50)\n", "4. Ин.яз (423) \n(17:00 - 18:20)\n"]
    var Sunday = ["1. Философия (401) \n(12:10 - 13:30)Л\n", "2. Математические основы ИС (2/401а) \n(14:00 - 15:20)Л\n", "3. Численные методы (301) \n(15:30 - 16:50)Л\n", "4. Численные методы (511) \n(17:00 - 18:20)"]
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
    
    init(){
        
    }

    
    init(Monday: [String]){
        self.Monday = Monday
    }
    
    func todayTimetable() -> String{
        var timetable = ""
        let date = Date()
        let dateToday = Calendar.current.component(.weekday, from: date)
        timetable = take(day: dateToday).joined(separator: "\n")

        return timetable
    }
   
    func yesterdayTimetable() -> String {
        var timetable = ""
        let date = Date()
        let dateToday = Calendar.current.component(.weekday, from: date) + 1
        timetable = take(day: dateToday).joined(separator: "\n")

        return timetable
    }
  
}




class TodayLessonsViewController: UIViewController{
 
//    var allTimetable = AllTimetableStruct()
    @IBOutlet weak var TimetableLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "photo-1579546929518-9e396f3cc809")
        backgroundImage.contentMode = .scaleAspectFill
        view.insertSubview(backgroundImage, at: 0)
        
        TimetableLabel.text = AllTimetableStruct().todayTimetable()
        // Do any additional setup after loading the view.
    }
    
//    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
//        guard let destinationVC = seque.destination as? EditTimetableViewController else { return }
//        allTimetable = destinationVC.alltimetable
//    }
    
}
