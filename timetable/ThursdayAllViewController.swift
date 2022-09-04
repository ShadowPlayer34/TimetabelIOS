//
//  ThursdayAllViewController.swift
//  timetable
//
//  Created by Андрей Худик on 30.08.22.
//

import UIKit

class ThursdayAllViewController: UIViewController {

    @IBOutlet weak var ThursdayTimetableLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var thursdayText = [""]
        thursdayText = AllTimetableStruct().take(day: 5).0
        ThursdayTimetableLabel.text = thursdayText.joined(separator: "\n")
    }
}
