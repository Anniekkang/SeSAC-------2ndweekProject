//
//  newViewController.swift
//  2ndweekProject
//
//  Created by 나리강 on 2022/07/12.
//

import UIKit

enum MusicType : Int {
    case all
    case Korea
    case other
}


class newViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        segmentControlValuedChanged(segmentControl)
        
    }
    

    
    @IBAction func segmentControlValuedChanged(_ sender: UISegmentedControl) {
       
        if segmentControl.selectedSegmentIndex == MusicType.all.rawValue {
            
        }
        
        
        
        
        
        if segmentControl.selectedSegmentIndex == 0 {
            resultLabel.text = "first segment"
        } else  if segmentControl.selectedSegmentIndex == 1 {
            resultLabel.text = "second segment"
        } else if segmentControl.selectedSegmentIndex == 2 {
            resultLabel.text = "third segment"
        } else {
            resultLabel.text = "wrong choice"
        }
        
        
        
        
    }
    
}
