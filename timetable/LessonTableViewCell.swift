//
//  LessonTableViewCell.swift
//  timetable
//
//  Created by Андрей Худик on 19.09.22.
//

import UIKit

class LessonTableViewCell: UITableViewCell {

    
    @IBOutlet weak var LesssonLabel: UILabel!
    @IBOutlet weak var DescriptionLessonLabel: UILabel!
    @IBOutlet weak var StartTimeLabel: UILabel!
    @IBOutlet weak var EndTimeLabel: UILabel!
    
    let numberOfWeek = Calendar.current.component(.weekday, from: Date()) + 1
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
 
   

}
