//
//  ViewController.swift
//  3-RPSGame_test
//
//  Created by 김병준 on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    var myChoice: RPS = RPS.rock
    
    //var rpsImages: [UIImage] = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "ready"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initialization()
        
    }


    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        // 가위, 바위, 보를 선택해서 저장
        let title: String = sender.currentTitle!
                
        switch title {
        case "가위":
            myChoice = RPS.sissors
            break
        case "보":
            myChoice = RPS.paper
            break
        case "바위":
            myChoice = RPS.rock
            break
        default:
            break
        }
        
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        var comChoice: RPS = RPS(rawValue: Int.random(in: 0...2))!
        
        // 컴퓨터가 선택한 랜덤 숫자.
        switch comChoice {
        case .rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "주머억"
            break
        case .sissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위잉"
            break
        case .paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보자기"
            break
        }
        
        // 내가 선택한 이미지, 레이블
        switch myChoice {
        case .rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "주머억"
            break
        case .sissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위잉"
            break
        case .paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보자기"
            break
        }
        
        if comChoice == myChoice {
            mainLabel.text = "비겼으으"
        } else if (comChoice == .rock && myChoice == .paper) {
            mainLabel.text = "이겼으으"
        } else if (comChoice == .paper && myChoice == .sissors) {
            mainLabel.text = "이겼으으"
        } else if (comChoice == .sissors && myChoice == .rock) {
            mainLabel.text = "이겼으으"
        } else {
            mainLabel.text = "졌당...ㅜ"
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        initialization()
    }
    
    func initialization() -> Void {
        comImageView.image = UIImage(named: "ready.png")
        myImageView.image = UIImage(named: "ready.png")
        
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        
        mainLabel.text = "선택하세요~!!"
    }
}
