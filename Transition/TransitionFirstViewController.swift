//
//  TransitionFirstViewController.swift
//  2ndweekProject
//
//  Created by 나리강 on 2022/07/15.
//

import UIKit

class TransitionFirstViewController: UIViewController {

    @IBOutlet weak var randomNumberLabel: UILabel!
    
    @IBOutlet weak var mottoTextView: UITextView!
    
    //감정 갯수를 영구적으로 저장하기
    @IBOutlet weak var emotionButton: UIButton!
    
    @IBOutlet weak var emotionButtonLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        
        if UserDefaults.standard.string(forKey: "nickname") != nil {
            //가져오기
            mottoTextView.text = UserDefaults.standard.string(forKey: "nickname")
           
        } else {
            // 데이터가 없는 경우에 사용할 문구
            mottoTextView.text = UserDefaults.standard.string(forKey: "annie")
           
        }
        
        
        emotionButtonLabel.text = "\(UserDefaults.standard.integer(forKey: "happyEmotion"))"
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
        
        randomNumberLabel.text = "\(Int.random(in: 1...100))"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
    
    
    @IBAction func unwindTransitionVC(annieSague : UIStoryboardSegue){
        
    }
    
    
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        UserDefaults.standard.set(mottoTextView.text, forKey: "nickname")
        print("save!")
    }
    
    //지우기
    @IBOutlet weak var emotionButtonClicked: UILabel!
    
    
    @IBAction func emotionButtonClikcked(_ sender: UIButton) {
        //기존데이터값 가져오기
        let currentValue = UserDefaults.standard.integer(forKey: "happyEmotion")
        //감정 + 1
        let updateValue = currentValue + 1
        
        //새로운 값 저장
        UserDefaults.standard.set(updateValue, forKey: "happyEmotion")
        
        //레이블에 새로운 내용 보여주기
        emotionButtonLabel.text = "\(UserDefaults.standard.integer(forKey: "happyEmotion"))"
        
        UserDefaults.standard.set(updateValue, forKey: "happyEmotion")
       
    }
    
    
    
}
