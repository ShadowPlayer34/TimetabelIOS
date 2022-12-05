//
//  SplashViewController.swift
//  timetable
//
//  Created by Андрей Худик on 27.11.22.
//

import UIKit
import RiveRuntime

class SplashViewController: UIViewController {

    @IBOutlet weak var riveView: RiveView!
    
    var riveModel = RiveViewModel(fileName: "TryThis")
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
            self.riveModel.setView(self.riveView)
        }
        
        
    }
}
