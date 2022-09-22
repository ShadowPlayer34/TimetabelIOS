//
//  FullTimetableCollectionViewController.swift
//  timetable
//
//  Created by Андрей Худик on 21.09.22.
//

import UIKit

private let reuseIdentifier = "Weekday"

class FullTimetableCollectionViewController: UICollectionViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! WeekdayCollectionViewCell
        
        
        cell.WeekdayLabel.text = Calendar.current.WeekdayName(of: indexPath.item + 2)
        cell.backgroundColor = .red
        cell.layer.cornerRadius = 10
        cell.backgroundColor = UIColor(red: 0xB8, green: 0xC0, blue: 0xFF)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "ShowDetailsFullTimetable"{
            if let cell = sender as? UICollectionViewCell{
                if let indexPath = self.collectionView.indexPath(for: cell){
                    let detailVC = segue.destination as? WeekdayTimetableViewController
                    detailVC?.weekdayChoised = indexPath.item + 2
                }
            }
        }
    }

    // MARK: UICollectionViewDataSource

    
 


    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return true
    }

    

}
