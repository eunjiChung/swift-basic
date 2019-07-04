//
//  Reference2.swift
//  Kakao2018OpenChat
//
//  Created by DEV_MOBILE_IOS_JUNIOR on 04/07/2019.
//  Copyright © 2019 DEV_MOBILE_IOS_JUNIOR. All rights reserved.
//
import Foundation

enum Action {
    case enter, leave, change, unkown
    static func fromString(_ command: String) -> Action {
        switch command.lowercased() {
        case "enter": return .enter
        case "leave": return .leave
        case "change": return .change
        default: return .unkown
        }
    }
}

struct User {
    var id = ""
    var name = ""
}

struct Record {
    var action: Action
    var id = ""
}

func solution2(_ record:[String]) -> [String] {
    var users: [String: User] = [:]
    
    func stringToRecord(_ line: String) -> Record {
        let parsed = line.split(separator: " ")
        let command = String(parsed[0])
        let uid = String(parsed[1])
        return Record(action: Action.fromString(command), id: uid)
    }
    
    func registUser(_ line: String) {
        let parsed = line.split(separator: " ")
        guard parsed.count > 2 else { return }
        let uid = String(parsed[1])
        let name = String(parsed[2])
        if var user = users[uid] {
            user.name = name
            users[uid] = user
        } else {
            users[uid] = User(id: uid, name: name)
        }
    }
    
    func recordToString(_ r: Record) -> String? {
        guard let user = users[r.id] else { return nil }
        switch r.action {
        case .enter: return "\(user.name)님이 들어왔습니다."
        case .leave: return "\(user.name)님이 나갔습니다."
        default: return nil
        }
    }
    
    record.forEach(registUser)
    return record.map(stringToRecord)
        .map(recordToString)
        .filter({ $0 != nil })
        .map({ $0! })
}
