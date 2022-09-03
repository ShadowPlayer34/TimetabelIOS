//
//  MondayAllViewController.swift
//  timetable
//
//  Created by Андрей Худик on 30.08.22.
//

import UIKit


class MondayAllViewController: UIViewController {
 

    
    @IBOutlet weak var MondayTimatableLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MondayTimatableLabel.text = AllTimetableStruct().take(day: 2).joined(separator: "\n")
        
    }
//    var alltimetable = AllTimetableStruct()
//    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
//        guard let destinationVC = seque.destination as? FullTimetableViewController else { return }
//        alltimetable = destinationVC.alltimetable
//    }

    
   
  
    
}
