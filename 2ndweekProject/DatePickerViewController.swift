//
//  DatePickerViewController.swift
//  2ndweekProject
//
//  Created by 나리강 on 2022/07/13.
//

import UIKit

class DatePickerViewController: UIViewController {

    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    
    @IBOutlet var imageViews : [UIImageView]!
    
    @IBOutlet weak var firstDdayLabel: UILabel!
    @IBOutlet weak var secondDdayLabel: UILabel!
    @IBOutlet weak var thirdDdayLabel: UILabel!
    @IBOutlet weak var fourthDdayLabel: UILabel!
   
    @IBOutlet var ddayLabels : [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageSetup()
        labelSetup()
        
        
    }
    
    func imageSetup(){
        
        for i in 0...3 {
            imageViews[i].layer.cornerRadius = 20
        }

    }
    
    func labelSetup(){
        firstDdayLabel.text = "D+100"
        secondDdayLabel.text = "D+200"
        thirdDdayLabel.text = "D+300"
        fourthDdayLabel.text = "D+400"
        
        for i in 0...3 {
          
            ddayLabels[i].font = UIFont.systemFont(ofSize: 20, weight: .heavy)
            ddayLabels[i].textColor = .white
        }
        
        
        
    }
  

}
