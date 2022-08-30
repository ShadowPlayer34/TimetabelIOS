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
        FridayTimetableLabel.text = AllTimetableStruct().take(day: 6).joined(separator: "\n")
        
    }
    

}
