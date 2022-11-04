//
//  MusicTableViewCell.swift
//  timetable
//
//  Created by Андрей Худик on 17.10.22.
//

import UIKit

class MusicTableViewCell: UITableViewCell {

    @IBOutlet weak var nameOfMusicLabel: UILabel!
    @IBOutlet weak var imageOfMusicImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
