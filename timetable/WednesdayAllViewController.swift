//
//  WednesdayAllViewController.swift
//  timetable
//
//  Created by Андрей Худик on 30.08.22.
//

import UIKit

class WednesdayAllViewController: UIViewController {

    @IBOutlet weak var WednesdayTimetableLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var wednesdayText = [""]
        wednesdayText = AllTimetableStruct().take(day: 4).0
        WednesdayTimetableLabel.text = wednesdayText.joined(separator: "\n")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
