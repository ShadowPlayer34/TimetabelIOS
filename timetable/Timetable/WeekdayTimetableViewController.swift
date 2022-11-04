//
//  WeekdayTimetableViewController.swift
//  timetable
//
//  Created by Андрей Худик on 22.09.22.
//

import UIKit

class WeekdayTimetableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var LessonsTableView: UITableView!
    var weekdayChoised = 0

    override func viewDidLoad() {
        LessonsTableView.dataSource = self
        LessonsTableView.delegate = self
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = self.editButtonItem

      
    }
    //MARK: - настройка tableView
     func numberOfSections(in tableView: UITableView) -> Int {
        return timetable.take(day: weekdayChoised).0.endIndex
    }

     func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView()
        header.backgroundColor = .clear
        return header
    }
    
     func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.5
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         //MARK: - декодировка JSON расписания
          let data = UserDefaults.standard.object(forKey: "TimeTable") as! Data
         let alltimetable1 = try! JSONDecoder().decode(AllTimetableClass.self, from: data)
            
         //MARK: - настройка ячейек
        let allTimetable = alltimetable1.take(day: weekdayChoised)
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LessonTableViewCell
        cell.StartTimeLabel.text = allTimetable.1[indexPath.section].components(separatedBy: "-")[0]
        cell.EndTimeLabel.text = allTimetable.1[indexPath.section].components(separatedBy: "-")[1]
        cell.LesssonLabel.text = allTimetable.0[indexPath.section]
        cell.DescriptionLessonLabel.text = allTimetable.2[indexPath.section]
        cell.typeOfLessonView.backgroundColor = allTimetable.3[indexPath.section] ? UIColor(red: 0xFF, green: 0xB7, blue: 0x03) : UIColor(red: 0x8E, green: 0xCA, blue: 0xE6)
        cell.typeOfLessonView.layer.cornerRadius = 4
        cell.layer.cornerRadius = 10
        return cell
         
    }
}
