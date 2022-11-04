import UIKit

let numbers = ["5", "6"]
class PresentationViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var skipDayButton: UIButton!
    @IBOutlet weak var readyButton: UIButton!
    @IBOutlet weak var manageTimetableWeekdayLabel: UILabel!
    @IBOutlet weak var nameOfLessonLabel: UILabel!
    @IBOutlet weak var nameOfLessonTextView: UITextField!
    @IBOutlet weak var cabOfLessonLabel: UILabel!
    @IBOutlet weak var cabOfLessonTextView: UITextField!
    @IBOutlet weak var startTimeLable: UILabel!
    @IBOutlet weak var startTimeDatePicker: UIDatePicker!
    @IBOutlet weak var endTimeLabel: UILabel!
    @IBOutlet weak var endTimeDatePicker: UIDatePicker!
    @IBOutlet weak var addLessonButton: UIButton!
    @IBOutlet weak var nextDayButton: UIButton!
    @IBOutlet weak var isLectureSwitcher: UISwitch!
    @IBOutlet weak var typeOfWeekSegmentedControl: UISegmentedControl!
    //MARK: - variables
    var numberOfDays = 0
    var currentDay = 2 //для счетчика дней
    var currentLesson = 0 //для счетчика пар
    //MARK: -
    override func viewDidLoad() {
        super.viewDidLoad()
        let timezone = Calendar.current.timeZone
        startTimeDatePicker.timeZone = timezone
        manageTimetableWeekdayLabel.text = "\(Calendar.current.WeekdayName(of: currentDay))  \(currentLesson + 1) • пара"
        //настройка кнопок
        customButton(button: readyButton)
        customButton(button: nextDayButton)
        customButton(button: addLessonButton)
        customButton(button: skipDayButton)
        //настройка segmentedControl
        typeOfWeekSegmentedControl.setTitle("Обе", forSegmentAt: 0)
        typeOfWeekSegmentedControl.setTitle("Верхняя", forSegmentAt: 1)
        typeOfWeekSegmentedControl.setTitle("Нижняя", forSegmentAt: 2)
        typeOfWeekSegmentedControl.addTarget(self, action: #selector(valueChangedSC(sender:)), for: .valueChanged)
        
        
    }

    //MARK: - Functions
    @objc func valueChangedSC(sender: UISegmentedControl) {
        if sender == typeOfWeekSegmentedControl {
            
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    @IBAction func nextDayButtonTapped(_ sender: Any) {
        if nameOfLessonTextView.text! == "" || cabOfLessonTextView.text! == "" {
                showAlert(title: "Ошибка", message: "Заполните все поля!!!")
                return
        }
        if currentDay - 1 >= numberOfDays || (numberOfDays == 7 && currentDay == 1) {
           showAlert(title: "Ошибка", message: "Вышли за предел дней!")
            return
        }
        currentLesson = 0
        nameOfLessonTextView.text = ""
        cabOfLessonTextView.text = ""
        if currentDay < 7{
        currentDay += 1
        } else { currentDay = 1 }
        manageTimetableWeekdayLabel.text = "\(Calendar.current.WeekdayName(of: currentDay)) • \(currentLesson + 1) пара"
    }
    
    //TODO: сделать логику для кнопки
    @IBAction func skipDayButtonTapped(_ sender: Any) {
    }
    //кнопка для настройки следующей пары
    @IBAction func addLessonButtonTapped(_ sender: Any) {
        if nameOfLessonTextView.text! == "" || cabOfLessonTextView.text! == "" {
                showAlert(title: "Ошибка", message: "Заполните все поля!!!")
                return
        }
        
        //MARK: - сохранение данных в переменной
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"

        switch currentDay - 1{
        case 1: timetable.Monday[currentLesson] = nameOfLessonTextView.text!
            timetable.mondayCab[currentLesson] = cabOfLessonTextView.text!
            timetable.mondayTime[currentLesson] = dateFormatter.string(from: startTimeDatePicker.date) + "-" + dateFormatter.string(from: endTimeDatePicker.date)
            timetable.mondayIsLecture[currentLesson] = isLectureSwitcher.isOn
            
        case 2:
            timetable.Tuesday[currentLesson] = nameOfLessonTextView.text!
                timetable.tuesdayCab[currentLesson] = cabOfLessonTextView.text!
                timetable.tuesdayTime[currentLesson] = dateFormatter.string(from: startTimeDatePicker.date) + "-" + dateFormatter.string(from: endTimeDatePicker.date)
                timetable.tuesdayIsLecture[currentLesson] = isLectureSwitcher.isOn
        case 3:
            timetable.Wednesday[currentLesson] = nameOfLessonTextView.text!
                timetable.wednesdayCab[currentLesson] = cabOfLessonTextView.text!
                timetable.wednesdayTime[currentLesson] = dateFormatter.string(from: startTimeDatePicker.date) + "-" + dateFormatter.string(from: endTimeDatePicker.date)
                timetable.wednesdayIsLecture[currentLesson] = isLectureSwitcher.isOn
        case 4:
            timetable.Thursday[currentLesson] = nameOfLessonTextView.text!
                timetable.thursdayCab[currentLesson] = cabOfLessonTextView.text!
                timetable.thursdayTime[currentLesson] = dateFormatter.string(from: startTimeDatePicker.date) + "-" + dateFormatter.string(from: endTimeDatePicker.date)
                timetable.thursdayIsLecture[currentLesson] = isLectureSwitcher.isOn
        case 5:
            timetable.Friday[currentLesson] = nameOfLessonTextView.text!
                timetable.fridayCab[currentLesson] = cabOfLessonTextView.text!
                timetable.fridayTime[currentLesson] = dateFormatter.string(from: startTimeDatePicker.date) + "-" + dateFormatter.string(from: endTimeDatePicker.date)
                timetable.fridayIsLecture[currentLesson] = isLectureSwitcher.isOn
        case 6:
            timetable.Saturday[currentLesson] = nameOfLessonTextView.text!
                timetable.saturdayCab[currentLesson] = cabOfLessonTextView.text!
                timetable.saturdayTime[currentLesson] = dateFormatter.string(from: startTimeDatePicker.date) + "-" + dateFormatter.string(from: endTimeDatePicker.date)
                timetable.saturdayIsLecture[currentLesson] = isLectureSwitcher.isOn
        default: print("Error")
        }
        //MARK: -
        // очистка полей и обновление верхнего label
        nameOfLessonTextView.text = ""
        cabOfLessonTextView.text = ""
        currentLesson += 1
        manageTimetableWeekdayLabel.text! = "\(Calendar.current.WeekdayName(of: currentDay)) • \(currentLesson + 1) пара"
     
        
    }
    //кнопка для завершения создания расписания
    @IBAction func readyButtonTapped(_ sender: Any) {
        UserDefaults.standard.set(true, forKey: "tutorial")
        if let encoder = try?  JSONEncoder().encode(timetable) {
            UserDefaults.standard.set(encoder, forKey: "TimeTable")
        }
        dismiss(animated: true)
    }
}
//настройка alert

extension PresentationViewController{
    //TODO: попробовать перевести эту функцию в Functions.swift
    func showAlert(title: String, message: String) {
        let alertView = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ок", style: .default)
        alertView.addAction(action)
        present(alertView, animated: true)
    }
    
}
// для изучения
//MARK: отметка
//FIXME: отметка для фикса
//TODO: отметка что-либо сделать
