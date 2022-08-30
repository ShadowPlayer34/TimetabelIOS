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
        TuesdayTimetableLabel.text = AllTimetableStruct().take(day: 3).joined(separator: "\n")
      
    }
  
}
