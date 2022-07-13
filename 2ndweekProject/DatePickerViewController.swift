//
//  DatePickerViewController.swift
//  2ndweekProject
//
//  Created by 나리강 on 2022/07/13.
//

import UIKit

class DatePickerViewController: UIViewController {

    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet var imageViews : [UIImageView]!
    @IBOutlet var ddayLabels : [UILabel]!
    @IBOutlet var dateLabels : [UILabel]!
    
    @IBOutlet weak var choiceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageSetup()
        labelSetup()
        
        choiceButton.setTitle("날짜선택", for: .normal)
        choiceButton.setTitleColor(.purple, for: .normal)
        
        
        
        
    }
    
    func imageSetup(){
        
        for i in 0...3 {
            imageViews[i].layer.cornerRadius = 20
        }

    }
    
    func labelSetup(){
        for i in 0...3 {
          
            ddayLabels[i].font = UIFont.systemFont(ofSize: 20, weight: .heavy)
            ddayLabels[i].textColor = .white
            ddayLabels[i].text = "D+\(100 * (i+1))"
        }
        
        for i in 0...3 {
            dateLabels[i].text = ""
            dateLabels[i].textColor = .white
            dateLabels[i].font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        }

    }
  
    @IBAction func buttonAction(_ sender: UIButton) {
        //dateLabel이 바뀐다 각 디데이에 맞춰서
        //dateLabels[i] 0...3
        
        //choosen date
        let pickedDate = Date()
        let currentYear =  Calendar.current.dateComponents([.year], from: pickedDate)
        let currentMonth = Calendar.current.dateComponents([.month], from: pickedDate)
        let currentDay = Calendar.current.dateComponents([.day], from: pickedDate)
        
        
        
        
        print(currentYear)
        //D-Day
//        for i in 1...3 {
//            dateLabels[i] =
//        }
//
        
    }
    
}
