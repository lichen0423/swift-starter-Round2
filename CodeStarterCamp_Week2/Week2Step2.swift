//
//  Week2Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 홍세희 on 2023/08/28.
//


var myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]

func generateRandomNumbers() -> Set<Int> {
    var thisWeekLottonumbers: Set<Int> = []
    var popNumber: Int
    
    while thisWeekLottonumbers.count < 6 {
        popNumber = Int.random(in: 1...45)
        thisWeekLottonumbers.insert(popNumber)
    }
    return thisWeekLottonumbers
}


func compare(myLottoNumbers: Set<Int>, with thisWeekLottonumbers: Set<Int>) {
    var correctLottoNumbers: Set<Int> = []
    correctLottoNumbers = myLottoNumbers.intersection(thisWeekLottonumbers)
    
    if correctLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다!")
    } else {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        var count: Int = 0
        
        for number in correctLottoNumbers {
            count += 1
            if count != correctLottoNumbers.count {
                print("\(number)", terminator: ", ")
            } else if count == correctLottoNumbers.count{
                print("\(number)", terminator: " ")
            }
        }
        print("입니다!")
    }
}
