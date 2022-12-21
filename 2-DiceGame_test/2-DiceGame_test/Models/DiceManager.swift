//
//  DiceManager.swift
//  2-DiceGame_test
//
//  Created by 김병준 on 2022/12/19.
//

import UIKit

struct DiceManager {
    
    // 이미지 데이터 바구니(배열)
    private var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    
    func getRandomDice() -> UIImage {
        return diceArray.randomElement()!
    }
    
    func getFirstDice() -> UIImage {
        return diceArray[0]
    }
}
