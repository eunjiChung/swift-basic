//
//  main.swift
//  Kakao2018OpenChat
//
//  Created by DEV_MOBILE_IOS_JUNIOR on 04/07/2019.
//  Copyright © 2019 DEV_MOBILE_IOS_JUNIOR. All rights reserved.
//

import Foundation
// https://programmers.co.kr/learn/courses/30/lessons/42888

// Intput : ["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]

// Output : ["Prodo님이 들어왔습니다.", "Ryan님이 들어왔습니다.", "Prodo님이 나갔습니다.", "Prodo님이 들어왔습니다."]

var userDict = [String:String]()
var userRecord = [String:[Int:String]]()

func solution(_ record:[String]) -> [String] {
    var resultRecord = [String]()
    var i = 0
    
    for index in record {
        let result = index.split(separator: " ").map { String($0) }
        
        switch result[0] {
        case "Enter":
            enter(userid:result[1], nickname:result[2], index: i)
            i += 1
        case "Leave":
            leave(userid:result[1], index: i)
            i += 1
        case "Change":
            change(userid:result[1], nickname:result[2])
        default:
            print("Nothing....")
        }
    }
    
    resultRecord = createResultRecord()
    
    return resultRecord
}


func enter(userid:String, nickname:String, index: Int) {
    if userRecord[userid] == nil {
        userDict[userid] = nickname
        userRecord[userid] = [index:"\(nickname)님이 들어왔습니다."]
    } else {
        if userDict[userid] != nickname {
            change(userid: userid, nickname: nickname)
        } else {
            userDict[userid] = nickname
        }
        userRecord[userid]?[index] = "\(nickname)님이 들어왔습니다."
    }
    
//    print(userRecord)
}

func leave(userid:String, index:Int) {
    if userRecord[userid] == nil {
        let tempNick = "??"
        userDict[userid] = tempNick
        userRecord[userid] = [index:"\(tempNick)님이 나갔습니다."]
    } else {
        userRecord[userid]?[index] = "\(userDict[userid]!)님이 나갔습니다."
    }
    
//    print(userRecord)
}


func change(userid:String, nickname:String) {
    // 처음에 change가 나왔을 때
    if userDict[userid] == nil {
        userDict[userid] = nickname
    } else {
        guard let originName = userDict[userid] else { return }
        userDict[userid] = nickname
        guard let list = userRecord[userid] else { return }
        
        for index in list {
            let tempValue = index.value.replacingOccurrences(of: originName, with: nickname)
            userRecord[userid]?[index.key] = tempValue
        }
        
//        print(userRecord)
    }
}

func createResultRecord() -> [String] {
    var temp = [Int:String]()
    
    for (user, record) in userRecord {
        temp.merge(record) { (current, _) in current }
    }
    let temp2 = temp.sorted(by: < )
    
    var strArray = [String]()
    for (key, value) in temp2 {
        strArray.append(value)
    }
//    print(strArray)
    
    return strArray
}

let result = solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"])
print(result)





