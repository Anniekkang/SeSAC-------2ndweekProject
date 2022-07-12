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
    
    
    @IBOutlet weak var happyButton: UIButton!
    @IBOutlet weak var pleasantButton: UIButton!
    @IBOutlet weak var loveButton: UIButton!
    @IBOutlet weak var angryButton: UIButton!
    @IBOutlet weak var embarrasedButton: UIButton!
    @IBOutlet weak var reliefButton: UIButton!
    @IBOutlet weak var scaredButton: UIButton!
    @IBOutlet weak var cynicalButton: UIButton!
    @IBOutlet weak var sadButton: UIButton!
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainLabel.text = "Emotion Diary"
        mainLabel.textAlignment = .center
        mainLabel.font = UIFont.systemFont(ofSize: 20, weight: .heavy)

    }
    
   
    
        
    
    
    
   
    
    
    
    
    
}
