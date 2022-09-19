//
//  EditTimetableViewController.swift
//  timetable
//
//  Created by Андрей Худик on 31.08.22.
//

import UIKit

class EditTimetableViewController: UIViewController {

    @IBOutlet weak var EditTimetableTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        EditTimetableTextView.text = AllTimetableStruct().take(day: 2).0.joined(separator: "\n")
    }
    
    
    @IBAction func SendTimetableTapped() {
//        let temp = EditTimetableTextView.text.components(separatedBy: "\n")
//        AllTimetableStruct().Monday.removeAll()
//        AllTimetableStruct(Monday: temp)
//        alltimetable.Monday.removeAll()
//        alltimetable.Monday = temp
    }
    
//    var alltimetable = AllTimetableStruct()
//    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
//        guard let destinationVC = seque.destination as? MondayAllViewController else { return }
//        alltimetable = destinationVC.alltimetable
//    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

extension AllTimetableStruct{
    
}
