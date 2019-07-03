//
//  main.swift
//  ATM11399
//
//  Created by DEV_MOBILE_IOS_JUNIOR on 02/07/2019.
//  Copyright © 2019 DEV_MOBILE_IOS_JUNIOR. All rights reserved.
//

import Foundation

//print("Enter:")

let num = Int(readLine()!)!
let p = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted()
var sum = 0
var total = 0

for i in 0...num-1 {
    sum += p[i]
    total += sum
}

print(total)
