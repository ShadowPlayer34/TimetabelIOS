//
//  TomorrowTimetableViewController.swift
//  timetable
//
//  Created by Андрей Худик on 1.09.22.
//

import UIKit

class TomorrowTimetableViewController: UIViewController {

    let allTimetable = AllTimetableStruct()

    @IBOutlet weak var DayCountWeekTomorrowLabel: UILabel!
    @IBOutlet weak var WeekdayTomorrowLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let numberOfWeek = Calendar.current.component(.weekday, from: Date()) + 1
        let date = Date()
        let format = "dd MMMM"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: date)
        let str = dateFormatter.string(from: tomorrow!)
        WeekdayTomorrowLabel.text = Calendar.current.WeekdayName(of: numberOfWeek)
        DayCountWeekTomorrowLabel.text = "\(str) • \(AllTimetableStruct().take(day: numberOfWeek).0.endIndex) пары • \(AllTimetableStruct().typeOfWeek) неделя"
    }
    


}
