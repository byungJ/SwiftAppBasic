//
//  RPSManager.swift
//  3-RPSGame_test
//
//  Created by 김병준 on 2022/12/19.
//

import UIKit

struct RPSManager {
    
    
    private var comChoice: RPS = RPS(rawValue: Int.random(in: 0...2))!
    private var myChoice: RPS = RPS(rawValue: Int.random(in: 1...3))!

    func getReady() -> RPS {
        return RPS.ready
    }
    
    func getUserRPS() -> RPS {
        return myChoice
    }
    
    func getComputerRPS() -> RPS {
        return comChoice
    }
    
    mutating func userGetSelected(name: String) {
        switch name {
        case "가위":
            myChoice = RPS.scissors
            break
        case "보":
            myChoice = RPS.paper
            break
        case "바위":
            myChoice = RPS.rock
            break
        default:
            myChoice = RPS.rock
        }
    }
    
    func getRPSResult() -> String {
        if comChoice == myChoice {
            return "비겼으으"
        } else if (comChoice == .rock && myChoice == .paper) {
            return "이겼으으"
        } else if (comChoice == .paper && myChoice == .scissors) {
            return "이겼으으"
        } else if (comChoice == .scissors && myChoice == .rock) {
            return "이겼으으"
        } else {
            return "졌당...ㅜ"
        }
    }
    
    mutating func allReset() -> Void {
        comChoice = RPS(rawValue: Int.random(in: 0...2))!
        myChoice = RPS(rawValue: Int.random(in: 1...3))!
    }
}
