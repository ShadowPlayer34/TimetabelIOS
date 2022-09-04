//
//  TuesdayTimetableViewController.swift
//  timetable
//
//  Created by Андрей Худик on 30.08.22.
//

import UIKit

class TuesdayTimetableViewController: UIViewController {

    @IBOutlet weak var TuesdayTimetableLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var tuesdayText = [""]
        tuesdayText = AllTimetableStruct().take(day: 3).0
        TuesdayTimetableLabel.text = tuesdayText.joined(separator: "\n")
    }
  
}
