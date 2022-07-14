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
    //눌렀을 때 디데이별 날짜가 나오는 라벨
    @IBOutlet var dateLabels : [UILabel]!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageSetup()
        labelSetup()
    }
    
    @IBAction func datepickerAction(_ sender: UIDatePicker) {
        //눌렀을 때 dateLabels에 디데이별 날짜가 나옴
        
        var chosenLabel = sender.date.formatted(date: .complete, time: .omitted)
        
        
        for i in 0...3 {
            dateLabels[i].text! = chosenLabel
            dateLabels[i].textColor = .white
            dateLabels[i].font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        
        
            }
          
    
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
            dateLabels[i].font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        }
        
        

    }
  


}
        
        
       
        

    

