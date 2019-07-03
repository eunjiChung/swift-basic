//
//  main.swift
//  greedy1461
//
//  Created by DEV_MOBILE_IOS_JUNIOR on 03/07/2019.
//  Copyright © 2019 DEV_MOBILE_IOS_JUNIOR. All rights reserved.
//

//import Foundation

print("Enter:")
// 7 2
//-37 2 -6 -39 -29 11 -28

let books = readLine()!.split(separator: " ").map { Int($0)! }

let index = readLine()!.split(separator: " ").map { Int32($0)! }.sorted()

let negativeIndex = index.filter { $0 < 0 }
let positiveIndex = index.filter { $0 > 0 }.sorted(by: > )

var sum:Int32 = 0
if abs(negativeIndex[0]) > positiveIndex[1] {
    
    if books[0] % books[1] != 0 { sum += abs(negativeIndex[0]) }
    
    for i in stride(from: books[1], through: negativeIndex.count-1, by: books[1]) {
        sum += abs(negativeIndex[i])*2
    }
    
    for i in stride(from: 0, through: positiveIndex.count-1, by: books[1]) {
        sum += positiveIndex[i]*2
    }
} else {
    if books[0] % books[1] != 0 { sum += positiveIndex[0] }
    
    for i in stride(from: books[1], through: positiveIndex.count-1, by: books[1]) {
        sum += positiveIndex[i]*2
    }
    
    for i in stride(from: 0, through: negativeIndex.count-1, by: books[1]) {
        sum += abs(negativeIndex[i])*2
    }
}

print(sum)








