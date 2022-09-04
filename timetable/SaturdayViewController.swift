//
//  SaturdayViewController.swift
//  timetable
//
//  Created by Андрей Худик on 30.08.22.
//

import UIKit


class SaturdayViewController: UIViewController {

    @IBOutlet weak var SaturdayTimetableLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var saturdayText = [""]
        saturdayText = AllTimetableStruct().take(day: 7).0
        SaturdayTimetableLabel.text = saturdayText.joined(separator: "\n")
    }
    
    

}
