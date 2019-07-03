//
//  main.swift
//  greedy1541
//
//  Created by DEV_MOBILE_IOS_JUNIOR on 02/07/2019.
//  Copyright © 2019 DEV_MOBILE_IOS_JUNIOR. All rights reserved.
//

import Foundation

print("Enter:")
// 55-50+40

let cal = readLine()!
let expressions = cal.split(separator: "-")

var sum = Int(expressions[0])!

if expressions.count > 1 {
    for i in 1...expressions.count-1 {
        let value = NSExpression(format:String(expressions[i])).expressionValue(with: nil, context: nil) as! Int
        sum -= value
    }
}

print(sum)

