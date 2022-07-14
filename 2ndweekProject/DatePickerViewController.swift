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
        
    
     
        //누른 날짜 나오게 하는 코드
//        for i in 0...3 {
//             dateLabels[i].text! = sender.date.formatted(date: .complete, time: .omitted)
//            dateLabels[i].textColor = .white
//            dateLabels[i].font = UIFont.systemFont(ofSize: 15, weight: .heavy)
//            }
        // 누른 날짜로 부터 디데이 나오는 코드
        for i in 0...3 {
//
            dateLabels[i].textColor = .white
            dateLabels[i].font = UIFont.systemFont(ofSize: 15, weight: .heavy)
            dateLabels[i].text! = sender.date.addingTimeInterval(TimeInterval(60 * 60 * 24 * 100 * (i+1))).formatted(date: .complete, time: .omitted)
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
        
        
       
        

    

