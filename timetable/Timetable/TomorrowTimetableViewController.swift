//
//  TomorrowTimetableViewController.swift
//  timetable
//
//  Created by Андрей Худик on 1.09.22.
//
//TODO: переписать все распиание под переменную
import UIKit

class TomorrowTimetableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   

    let numberOfWeek = Calendar.current.component(.weekday, from: Date()) + 1
    let allTimetable = timetable.take(day: Calendar.current.component(.weekday, from: Date()) + 1)

    @IBOutlet weak var LessonsTableView: UITableView!
    @IBOutlet weak var DayCountWeekTomorrowLabel: UILabel!
    @IBOutlet weak var WeekdayTomorrowLabel: UILabel!
    
    override func viewDidLoad() {
        LessonsTableView.dataSource = self
        LessonsTableView.delegate = self
        super.viewDidLoad()
    
        timetable.typeOfWeekFunc()
        let date = Date()
        let format = "dd MMMM"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: date)
        let str = dateFormatter.string(from: tomorrow!)
        WeekdayTomorrowLabel.text = Calendar.current.WeekdayName(of: numberOfWeek)
        DayCountWeekTomorrowLabel.text = "\(str) • \(allTimetable.0.endIndex) пары • \(timetable.typeOfWeek) неделя"
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return allTimetable.0.endIndex
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.5
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
           let headerView = UIView()
           headerView.backgroundColor = UIColor.clear
           return headerView
       }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = LessonsTableView.dequeueReusableCell(withIdentifier: "Lesson", for: indexPath) as! LessonTableViewCell
        guard numberOfWeek != 8 else { // доделать
            cell.LesssonLabel.text = "Спать"
            return cell }
        cell.StartTimeLabel.text = allTimetable.1[indexPath.section].components(separatedBy: "-")[0]
        cell.EndTimeLabel.text = allTimetable.1[indexPath.section].components(separatedBy: "-")[1]
        cell.LesssonLabel.text = allTimetable.0[indexPath.section]
        cell.DescriptionLessonLabel.text = allTimetable.2[indexPath.section]
        cell.typeOfLessonView.backgroundColor = allTimetable.3[indexPath.section] ? UIColor(red: 0xFF, green: 0xB7, blue: 0x03) : UIColor(red: 0x8E, green: 0xCA, blue: 0xE6)
        cell.typeOfLessonView.layer.cornerRadius = 4
        cell.layer.cornerRadius = 10
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 50.0
//    }
//
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//            return UIView()
//        }
   
    
}

public extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}
