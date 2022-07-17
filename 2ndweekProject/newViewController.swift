//
//  newViewController.swift
//  2ndweekProject
//
//  Created by 나리강 on 2022/07/12.
//

import UIKit



class newViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    
    
    @IBOutlet weak var happyLabel: UILabel!
    @IBOutlet weak var pleasantLabel: UILabel!
    @IBOutlet weak var loveLabel: UILabel!
    @IBOutlet weak var angryLabel: UILabel!
    @IBOutlet weak var embarrasedLabel: UILabel!
    @IBOutlet weak var reliefLabel: UILabel!
    @IBOutlet weak var scaredLabel: UILabel!
    @IBOutlet weak var cynicalLabel: UILabel!
    @IBOutlet weak var sadLabel: UILabel!
    
    
   
    
    var count = [0,0,0,0,0,0,0,0,0]
//    enum word : Int {
//        case 행복해 = 0, 기뻐, 사랑해, 화났어, 당황, 안심, 무서워, 시니컬, 슬퍼
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainLabel.text = "Emotion Diary"
        mainLabel.textAlignment = .center
        mainLabel.font = UIFont.systemFont(ofSize: 20, weight: .heavy)

    }
    
    @IBAction func happyButton(_ sender: UIButton) {

        count[0] += 1
        happyLabel.text = "\(count[0])"
//        UserDefaults.standard.set(String().self, forKey: "key")
//        UserDefaults.standard.string(forKey: "key")
    }


    @IBAction func pleButton(_ sender: UIButton) {
        count[1] += 1
        pleasantLabel.text = "\(count[1])"

    }


    @IBAction func loveButton(_ sender: UIButton) {
        count[2] += 1
        loveLabel.text = "\(count[2])"
    }


    @IBAction func angryButton(_ sender: UIButton) {
        count[3] += 1
        angryLabel.text = "\(count[3])"
    }


    @IBAction func embButton(_ sender: UIButton) {
        count[4] += 1
        embarrasedLabel.text = "\(count[4])"
    }


    @IBAction func reliefButton(_ sender: UIButton) {
        count[5] += 1
        reliefLabel.text = "\(count[5])"
    }


    @IBAction func scaredButton(_ sender: UIButton) {
        count[6] += 1
        scaredLabel.text = "\(count[6])"
    }


    @IBAction func cyButton(_ sender: UIButton) {
        count[7] += 1
        cynicalLabel.text = "\(count[7])"
    }

    @IBAction func sadButton(_ sender: UIButton) {
        count[8] += 1
        sadLabel.text = "\(count[8])"
    }

    
}
