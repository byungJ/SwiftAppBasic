//
//  ViewController.swift
//  5-UpDownGame_test
//
//  Created by 김병준 on 2022/07/24.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var randomNumber: Int = Int.random(in: 1...10)
    var myNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mainLabel.text = "숫자를 선택하세요~~!!"
        numberLabel.text = ""
    }

    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        guard let numTitle:String = sender.currentTitle else { return }
        
        numberLabel.text = numTitle
        
        guard let num:Int = Int(numTitle) else { return }
        myNumber = num
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        //label로 값 가져오기
        guard let myNumberString = numberLabel.text else { return }
        guard let myNumberInt = Int(myNumberString) else { return }
        
        if randomNumber > myNumber {
            mainLabel.text = "UP"
        } else if randomNumber < myNumber {
            mainLabel.text = "DOWN"
        } else {
            mainLabel.text = "BINGO😆"
            randomNumber = Int.random(in: 1...10)
        }
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        randomNumber = Int.random(in: 1...10)
        myNumber = 0
        
        mainLabel.text = "숫자를 선택하세요~~!!"
        numberLabel.text = ""
    }
    
}

