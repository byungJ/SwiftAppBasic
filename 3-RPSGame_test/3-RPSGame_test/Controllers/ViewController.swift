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
    

    // 가위바위보 게임(비즈니스 로직) 관리 위한 인스턴스
    var rpsManager = RPSManager()
    
    //var rpsImages: [UIImage] = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "ready"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureUI()
        
    }

    func configureUI() {
        comImageView.image = rpsManager.getReady().rpsInfo.image
        myImageView.image = rpsManager.getReady().rpsInfo.image

        
        comChoiceLabel.text = rpsManager.getReady().rpsInfo.name
        myChoiceLabel.text = rpsManager.getReady().rpsInfo.name

    }
    

    @IBAction func rpsButtonTapped(_ sender: UIButton) {
      
        guard let title = sender.currentTitle else { return }
        
        print(title)
        
        rpsManager.userGetSelected(name: title)
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        
        comImageView.image = rpsManager.getComputerRPS().rpsInfo.image
        comChoiceLabel.text = rpsManager.getComputerRPS().rpsInfo.name
        
        myImageView.image = rpsManager.getUserRPS().rpsInfo.image
        myChoiceLabel.text = rpsManager.getUserRPS().rpsInfo.name
        
        mainLabel.text = rpsManager.getRPSResult()
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        comImageView.image = rpsManager.getReady().rpsInfo.image
        myImageView.image = rpsManager.getReady().rpsInfo.image

        
        comChoiceLabel.text = rpsManager.getReady().rpsInfo.name
        myChoiceLabel.text = rpsManager.getReady().rpsInfo.name
        
        mainLabel.text = "선택하세요"
        
        rpsManager.allReset()
    }
    
}
