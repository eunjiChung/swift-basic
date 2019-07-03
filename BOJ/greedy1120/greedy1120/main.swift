//
//  main.swift
//  greedy1120
//
//  Created by DEV_MOBILE_IOS_JUNIOR on 02/07/2019.
//  Copyright © 2019 DEV_MOBILE_IOS_JUNIOR. All rights reserved.
//

import Foundation

print("Enter:")
// adaabc aababbc

let strings = readLine()!.split(separator: " ")
let A = Array(strings[0]), B = Array(strings[1])
var count:[Int] = []

for i in 0...B.count - A.count {
    var sum = 0
    for j in 0...A.count-1 {
        if A[j] != B[i+j] {
            sum += 1
        }
    }
    count.append(sum)
}

print(count.min()!)
