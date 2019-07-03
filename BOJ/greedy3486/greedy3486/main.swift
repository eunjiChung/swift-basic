//
//  main.swift
//  greedy3486
//
//  Created by DEV_MOBILE_IOS_JUNIOR on 01/07/2019.
//  Copyright © 2019 DEV_MOBILE_IOS_JUNIOR. All rights reserved.
//

import Foundation


print("Enter:")

let num = Int(readLine()!)!

for _ in 1...num {
    let nums = readLine()!.components(separatedBy: " ")
    
    let reverseNum1 = Int(String(nums[0].reversed()))!
    let reverseNum2 = Int(String(nums[1].reversed()))!
    let sum = "\(reverseNum1+reverseNum2)"
    let reversedSum = Int(String(sum.reversed()))!
    print(reversedSum)
}
