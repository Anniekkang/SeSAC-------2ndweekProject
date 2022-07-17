//
//  finalEmotionViewController.swift
//  2ndweekProject
//
//  Created by 나리강 on 2022/07/17.
//

import UIKit

//protocol Buttons {
//    func EmotionButtonsAction(_ sender: UIButton)
//}
//
//
class finalEmotionViewController: UIViewController {

    
    
    @IBOutlet var collectionButtons : [UIButton]!
    @IBOutlet var emotionLabels : [UILabel]!
    var count = [0,0,0,0,0,0,0,0,0]
    
    override func viewDidLoad() {
    super.viewDidLoad()

        labelSetup()
        
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
            emotionLabels[index].text = "\(count[index])"}
            
        }

}
