//
//  ViewController.swift
//  2-DiceGame_test
//
//  Created by 김병준 on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    // 이미지 데이터 바구니(배열)
    // var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    // 주사위 관련 비즈니스 로직을 다루는 인스턴스
    var diceManager = DiceManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstImageView.image = diceManager.getFirstDice()
        secondImageView.image = diceManager.getFirstDice()
    }

    @IBAction func rollButtonTapped(_ sender: UIButton) {
        
        // 첫번째 이미지뷰의 이미지를 랜덤으로 변경
        firstImageView.image = diceManager.getRandomDice()
        
        // 두번째 이미지뷰의 이미지를 랜덤으로 변경
        secondImageView.image = diceManager.getRandomDice()
    }
}

