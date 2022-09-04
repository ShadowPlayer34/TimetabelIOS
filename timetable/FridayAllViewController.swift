//
//  FridayAllViewController.swift
//  timetable
//
//  Created by Андрей Худик on 30.08.22.
//

import UIKit

class FridayAllViewController: UIViewController {

    @IBOutlet weak var FridayTimetableLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var fridayText = [""]
        fridayText = AllTimetableStruct().take(day: 6).0
        FridayTimetableLabel.text = fridayText.joined(separator: "\n")
    }
    

}
