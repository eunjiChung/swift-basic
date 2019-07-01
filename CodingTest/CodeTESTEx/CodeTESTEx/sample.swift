//
//  sample.swift
//  CodeTESTEx
//
//  Created by DEV_MOBILE_IOS_JUNIOR on 28/06/2019.
//  Copyright © 2019 DEV_MOBILE_IOS_JUNIOR. All rights reserved.
//

import Foundation


func getArraySubStrings(string:String) -> [Int] {
    let inputArray = string.components(separatedBy: " ") // String Array를 리턴해준다
    let newArray = inputArray.map { Int($0)!}
    return newArray
}
