//
//  Reference1.swift
//  Kakao2018OpenChat
//
//  Created by DEV_MOBILE_IOS_JUNIOR on 04/07/2019.
//  Copyright © 2019 DEV_MOBILE_IOS_JUNIOR. All rights reserved.
//

import Foundation

func solution1(_ record:[String]) -> [String] {
    let actions = ["Enter":"님이 들어왔습니다.", "Leave":"님이 나갔습니다."]
    var a = [String:String]()
    
    record.forEach {
        let separated = $0.components(separatedBy: " ")
        if separated.count > 2 {
            a[separated[1]] = separated[2]
        }
    }
    
    return record.filter { !$0.contains("Change") }.map { (value:String) -> String in
        let separated = value.components(separatedBy: " ")
        let newString = a[separated[1]]! + actions[separated[0]]!
        return newString
    }
}
