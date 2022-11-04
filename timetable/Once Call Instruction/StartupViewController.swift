//
//  StartupViewController.swift
//  timetable
//
//  Created by Андрей Худик on 1.10.22.
//

import UIKit
class StartupViewController: UIViewController {
    
    @IBOutlet weak var countOfLessonsLabel: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var CountOfLessonsTextField: UITextField!
    var numberOfDays1 = 0
    var currentPage = 0
    var numberOfPages = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView()
        submitButton.layer.cornerRadius = 10
        gesture()
        
    }
    //переход на другой view
    @IBAction func submitButtonTapped(_ sender: Any) {
        if CountOfLessonsTextField.text != "" {
            performSegue(withIdentifier: "showCreateTimeTable", sender: nil)
        } else {
            showAlert(title: "Ошибка", message: "Заполните поле!")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if UserDefaults.standard.bool(forKey: "tutorial") == true {
            dismiss(animated: true, completion: nil)
        }
    }
    
    // жест для того, что бы оставить стандартное расписание
    func gesture() {
        let tenTaps = UITapGestureRecognizer(target: self, action: #selector(tenTap))
        tenTaps.numberOfTapsRequired = 10
        view.addGestureRecognizer(tenTaps)
        
    }
    
    // функция для распознавания пяти тапов
    @objc func tenTap() {
        UserDefaults.standard.set(true, forKey: "tutorial")
        if let encoder = try?  JSONEncoder().encode(timetable) {
            UserDefaults.standard.set(encoder, forKey: "TimeTable")
        }
        dismiss(animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
}

extension StartupViewController: UIPickerViewDelegate, UIPickerViewDataSource {
   //MARK: - настройка pickerView
    func pickerView() {
        let picker = UIPickerView()
        picker.delegate = self
        CountOfLessonsTextField.inputView = picker
       
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return numbers[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedCount = numbers[row]
        CountOfLessonsTextField.text = selectedCount
    }
    //MARK: -
    //перевод данных на другой view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let temp = CountOfLessonsTextField.text
        numberOfDays1 = Int(temp!)!
        if let presentationVC = segue.destination as? PresentationViewController {
            presentationVC.numberOfDays = numberOfDays1
        }
    }
    //создание предупреждения
    func showAlert(title: String, message: String) {
        let alertView = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ок", style: .default)
        alertView.addAction(action)
        present(alertView, animated: true)
    }
}

//TODO: реализовать выход из данного view с помощью проверки настройки, то есть по тому же методу что и единождое открытие данного окна
