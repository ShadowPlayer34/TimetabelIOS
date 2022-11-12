import UIKit

class TodayLessonsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    //MARK: - variables
    @IBOutlet weak var navBar: UINavigationItem!
    @IBOutlet weak var TodayTimetableTableView: UITableView!
    @IBOutlet weak var DayCountWeekTodayLabel: UILabel!
    @IBOutlet weak var WeekdayLabel: UILabel!
    var nowLesson = 100
    let numberOfWeek = Calendar.current.component(.weekday, from: Date())
    var allTimetable = timetable.take(day: Calendar.current.component(.weekday, from: Date()))
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        createRightButton()
        showPresentation()
        timetable.typeOfWeekFunc()
        playMusic()
        if UserDefaults.standard.bool(forKey: "tutorial") == true {
        let data = UserDefaults.standard.object(forKey: "TimeTable") as! Data
        let decoded = try! JSONDecoder().decode(AllTimetableClass.self, from: data)
        allTimetable = decoded.take(day: Calendar.current.component(.weekday, from: Date()))
        TodayTimetableTableView.dataSource = self
        TodayTimetableTableView.delegate = self
        WeekdayLabel.text = Calendar.current.WeekdayName(of: numberOfWeek)
        nextLesson()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        showPresentation()
        
        timetable.typeOfWeekFunc()
        if UserDefaults.standard.bool(forKey: "tutorial") == true {
        let data = UserDefaults.standard.object(forKey: "TimeTable") as! Data
        let decoded = try! JSONDecoder().decode(AllTimetableClass.self, from: data)
        allTimetable = decoded.take(day: Calendar.current.component(.weekday, from: Date()))
        TodayTimetableTableView.dataSource = self
        TodayTimetableTableView.delegate = self
        WeekdayLabel.text = Calendar.current.WeekdayName(of: numberOfWeek)
        nextLesson()
        }
    }
    
    //создание кнопки для navBar
    private func createRightButton() {
        let myButton = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(edit))
        navBar.rightBarButtonItem = myButton
    }
    
    @objc private func edit() {
        TodayTimetableTableView.isEditing = !TodayTimetableTableView.isEditing
    }
    
    //нахождение следующей пары и форматирование лейбла с данными о сегодняшнем дне
    func nextLesson() {
        let date = Date()
        let format = "dd MMMM"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format

        
        let str = dateFormatter.string(from: date)
        let locale = Locale(identifier: "ru_RU")
        dateFormatter.locale = locale
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .short
        let time = dateFormatter.string(from: Date())
        let timeNow = time.components(separatedBy: ":")
        let timeNowInt = Int(timeNow[0] + timeNow[1])!
        
        //форматирование лейбла о сегодняшнем дне
        DayCountWeekTodayLabel.text = "\(str) • \(AllTimetableClass().take(day: numberOfWeek).0.endIndex) пары • \(timetable.typeOfWeek) неделя"
        
        //подбор следующей пары
        switch timeNowInt{
        case 1000...1209:
            if allTimetable.0.indices.contains(0){
                    nowLesson = 0
            }
        case 1210...1359:
            if allTimetable.0.indices.contains(1){
                    nowLesson = 1
            }
        case 1400...1529:
            if allTimetable.0.indices.contains(2){
                    nowLesson = 2
            }
        case 1530...1659:
            if allTimetable.0.indices.contains(3){
                    nowLesson = 3
            }
        case 1700...1820:
            if allTimetable.0.indices.contains(4){ //проверка на наличие данного индекса

                    nowLesson = 4
            }
        default:
            nowLesson = 30
        }
       
    }
    
    //запуск обучалки
    func showPresentation() {
        if UserDefaults.standard.bool(forKey: "tutorial") == false{
            if let presentationVC = storyboard?.instantiateViewController(withIdentifier: "startup") as? StartupViewController{
                present(presentationVC, animated: true, completion: nil)
            }
        }
    }
    
    //воспроизведение фоновой музыки
    func playMusic() {
        let musicBool = UserDefaults.standard.bool(forKey: "musicBool")
        if musicBool == true {
            let music = UserDefaults.standard.string(forKey: "music")
            
            guard let music = music else {
                return
            }

            startMusic(pathForMusic: music, volume: {player.volume = UserDefaults.standard.float(forKey: "musicVolume")})
        }
    }
    
    //MARK: - настройка таблицы
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
        //TODO: придумать другое решение проблемы с data, что бы не повторять его так часто
        let data = UserDefaults.standard.object(forKey: "TimeTable") as! Data
        let decoded = try! JSONDecoder().decode(AllTimetableClass.self, from: data)
        allTimetable = decoded.take(day: Calendar.current.component(.weekday, from: Date()))
        //настройка ячейек
        let cell = TodayTimetableTableView.dequeueReusableCell(withIdentifier: "Lesson", for: indexPath) as! LessonTableViewCell
       
        cell.StartTimeLabel.text = allTimetable.1[indexPath.section].components(separatedBy: "-")[0]
        cell.EndTimeLabel.text = allTimetable.1[indexPath.section].components(separatedBy: "-")[1]
        cell.LesssonLabel.text = allTimetable.0[indexPath.section]
        cell.DescriptionLessonLabel.text = allTimetable.2[indexPath.section]
        cell.typeOfLessonView.backgroundColor = allTimetable.3[indexPath.section] ? UIColor(red: 0xFF, green: 0xB7, blue: 0x03) : UIColor(red: 0x8E, green: 0xCA, blue: 0xE6)
        if indexPath.section == nowLesson {
            cell.layer.borderWidth = 0.7
            cell.layer.borderColor = .init(red: 0, green: 0, blue: 0, alpha: 1.0)
        }
        cell.typeOfLessonView.layer.cornerRadius = 4
        cell.layer.cornerRadius = 10
       
        return cell
    }
}

//перевод числа в название недели
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


