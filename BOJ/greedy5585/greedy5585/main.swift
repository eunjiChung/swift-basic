//
//  main.swift
//  greedy5585
//
//  Created by DEV_MOBILE_IOS_JUNIOR on 02/07/2019.
//  Copyright © 2019 DEV_MOBILE_IOS_JUNIOR. All rights reserved.
//

import Foundation

print("Enter:")

if let pay = Int(readLine()!) {
    var charge = 1000-pay
    let first = charge/500
    charge %= 500
    let second = charge/100
    charge %= 100
    let fifth = charge/50
    charge %= 50
    let third = charge/10
    charge %= 10
    let fourth = charge/5
    charge %= 5
    print(first+second+third+fourth+charge+fifth)
}
