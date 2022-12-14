//
//  main.swift
//  4-RandomBingo_test
//
//  Created by 김병준 on 2022/07/24.
//

import Foundation

print("Hello, UpDown Bingo Game Start")

var comRamdom: Int = Int.random(in: 1...100)

var myNumber = 0
var bingo: Bool = true
var count: Int = 0

while(bingo) {
    
    if let input = readLine() {
        if let number = Int(input) {
            myNumber = number
        }
    }
    
    if comRamdom > myNumber {
        print("UP")
        count += 1
    } else if comRamdom < myNumber {
        print("DOWN")
        count += 1
    } else {
        print("Bingo")
        print("your count: \(count)")
        bingo = false
    }
}

