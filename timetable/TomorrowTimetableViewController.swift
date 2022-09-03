//
//  TomorrowTimetableViewController.swift
//  timetable
//
//  Created by Андрей Худик on 1.09.22.
//

import UIKit

class TomorrowTimetableViewController: UIViewController {

    let allTimetable = AllTimetableStruct()
    @IBOutlet weak var TomorrowTimetableLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "photo-1579546929518-9e396f3cc809")
        backgroundImage.contentMode = .scaleAspectFill
        view.insertSubview(backgroundImage, at: 0)
        TomorrowTimetableLabel.text = allTimetable.yesterdayTimetable()
    }
    


}
