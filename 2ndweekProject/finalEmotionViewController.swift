//
//  finalEmotionViewController.swift
//  2ndweekProject
//
//  Created by 나리강 on 2022/07/17.
//

import UIKit


class finalEmotionViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet var collectionButtons : [UIButton]!
    @IBOutlet var emotionLabels : [UILabel]!
    var count = [0,0,0,0,0,0,0,0,0]
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        mainLabel.text = "감정노트"
        labelSetup()
        for i in 0...8 {
            emotionLabels[i].text = "\(UserDefaults.standard.integer(forKey: "key"))"
        }
    }
    
    
    func labelSetup(){
        for i in 0...8 {
            emotionLabels[i].text = "0"
            emotionLabels[i].font = UIFont.systemFont(ofSize: 15, weight: .bold)
            emotionLabels[i].textColor = .purple
        }
        
    }
    
    @IBAction func emotionButtons(_ sender: UIButton) {
        if let index = collectionButtons.index(of: sender) {
        count[index] += 1
            emotionLabels[index].text = "\(count[index])"

            }
        let currentValue = UserDefaults.standard.integer(forKey: "key")
        UserDefaults.standard.set(currentValue, forKey: "key")
        
        
    }
    
     

}

//let currentValue = UserDefaults.standard.integer(forKey: "happyEmotion")
////감정 + 1
//let updateValue = currentValue + 1
//
////새로운 값 저장
//UserDefaults.standard.set(updateValue, forKey: "happyEmotion")
//
////레이블에 새로운 내용 보여주기
//emotionButtonLabel.text = "\(UserDefaults.standard.integer(forKey: "happyEmotion"))"
//
//UserDefaults.standard.set(updateValue, forKey: "happyEmotion")
