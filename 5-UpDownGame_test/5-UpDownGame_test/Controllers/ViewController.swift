//
//  ViewController.swift
//  5-UpDownGame_test
//
//  Created by 김병준 on 2022/07/24.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var upDownManager = UpDownManager()
    
    var randomNumber: Int = Int.random(in: 1...10)
    var myNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        reset()
    }
    
    func reset() {
        mainLabel.text = "선택하세요"
        numberLabel.text = ""
        upDownManager.resetNum()
    }

    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        guard let numTitle:String = sender.currentTitle else { return }
        
        numberLabel.text = numTitle
        
        guard let num:Int = Int(numTitle) else { return }
        myNumber = num
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        guard let myNumString = numberLabel.text,
              let myNumber = Int(myNumString) else { return }
        
        upDownManager.setUserNum(num: myNumber)
        mainLabel.text = upDownManager.getUpDownResult()
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        reset()
    }
    
}

