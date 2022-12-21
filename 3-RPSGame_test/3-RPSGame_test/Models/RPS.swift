//
//  RPS.swift
//  3-RPSGame_test
//
//  Created by 김병준 on 2022/07/23.
//

import Foundation
import UIKit

enum RPS: Int {
    case ready
    case rock
    case scissors
    case paper
    
    // 계산 속성
    var rpsInfo: (image: UIImage, name: String) {
        switch self {
        case .ready:
            return (#imageLiteral(resourceName: "ready"),"준비")
        case .rock:
            return (#imageLiteral(resourceName: "rock"),"바위")
        case .scissors:
            return (#imageLiteral(resourceName: "scissors"),"가위")
        case .paper:
            return (#imageLiteral(resourceName: "paper"),"보")
        }
    }
}
