//
//  ViewController.swift
//  Project1
//
//  Created by 김병준 on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    var check: Bool = false
    
    @IBOutlet weak var mainL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        mainL.text = "안녕하세요~~!!"
        mainL.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        //#colorLiteral(
        //UIColor.darkGray
        if(check) {
            mainL.text = "반갑습니다~~!!"
            mainL.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
            check = !check
        }
        else{
            mainL.text = "스위프트 개발자 가즈아아아~~!!"
            mainL.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            check = !check
        }
    }
    
}

