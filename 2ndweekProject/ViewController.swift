//
//  ViewController.swift
//  2ndweekProject
//
//  Created by 나리강 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        let image = UIImage(named: "sesec_slime6")?.withRenderingMode(.alwaysOriginal)

        view.backgroundColor = example().0
        //let systemImage = UIImage(systemName :) : 애플시스템심볼

        
    }
    
    // 배경색, 레이블, 이미지
    func example() -> (UIColor, String, String){
        let color : [UIColor] = [.black, .purple, .lightGray]
        let image : [String] = ["sesacc_slime6", "sesacc_slime7", "sesacc_slime8"]


        return (color.randomElement()!, "annie", image.randomElement()!)

    }

    func setUserNickname() -> String {
        let nickname = ["annie","nari","linda"]
        let select = nickname.randomElement()!

        return "I am \(select)"

    }
    
    
    func showAlertController(){

      //  1. 흰바탕 만들기 : UIAlertController
       let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)

        //2. 버튼만들기
        let ok = UIAlertAction(title: "Okay", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "Cancle", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "Open new tab", style: .default, handler: nil)
        let copy =  UIAlertAction(title: "Copy", style: .default, handler: nil)

        //3. 흰바탕에 버튼 추가하기
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(cancel)
        alert.addAction(ok)

        //4. present

        present(alert, animated: true, completion: nil)

        
        
    
    
    

    }


}
