//
//  ViewController.swift
//  timetable
//
//  Created by Андрей Худик on 30.08.22.
//

import UIKit


class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "photo-1579546929518-9e396f3cc809")
        backgroundImage.contentMode = .scaleAspectFill
        view.insertSubview(backgroundImage, at: 0)
        // Do any additional setup after loading the view.
    }
//    var alltimetable = AllTimetableStruct()
//    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
//        guard let destinationVC = seque.destination as? TodayLessonsViewController else { return }
//        alltimetable = destinationVC.allTimetable
//    }
    
    @IBAction func unwindSegueToTheFirstVC(segue: UIStoryboardSegue){
        
    }
}

