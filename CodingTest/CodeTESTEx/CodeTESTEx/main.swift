//
//  main.swift
//  CodeTESTEx
//
//  Created by DEV_MOBILE_IOS_JUNIOR on 28/06/2019.
//  Copyright © 2019 DEV_MOBILE_IOS_JUNIOR. All rights reserved.
//

import Foundation


print("enter: ")

// 실수 입력 받아 출력하기
//let a = Float(readLine()!)
//
//if let a = a {
//    let b = String(format: "%.6f", a)
//    print(b)
//}


/*
 2. Swift로 입력 받아 Array로 출력하기!
func getArraySubStrings(string:String) -> [Int] {
    let inputArray = string.components(separatedBy: " ") // String Array를 리턴해준다
    let newArray = inputArray.map { Int($0)!}
    return newArray
}


print("enter: ")
let a = readLine()!
let array = getArraySubStrings(string: a)
print(array)
*/


// 3. 두 개의 문자가 공백 입력을 받아 순서를 바꿔 출력
/*
var a = readLine()!.components(separatedBy: " ").map { String($0) }
let temp = a[0]
a[0] = a[1]
a[1] = temp

let string = String(format: "%@ %@", a[0], a[1])
print(string)
 */


// 4. 실수(float) 한 개 입력 받아 소수점 이하 3째 자리에서 반올림하여 2째 자리까지 출력
// 키워드 : 부동 소수점
// 1.59254

let downNumberFormatter = NumberFormatter()
downNumberFormatter.roundingMode = .down
downNumberFormatter.minimumFractionDigits = 3
downNumberFormatter.maximumFractionDigits = 3

let upNumberFormatter = NumberFormatter()
upNumberFormatter.roundingMode = .ceiling
upNumberFormatter.minimumFractionDigits = 3
upNumberFormatter.maximumFractionDigits = 3

let roundNumberFormatter = NumberFormatter()
roundNumberFormatter.minimumFractionDigits = 2
roundNumberFormatter.maximumFractionDigits = 2
//
//let num = Float(readLine()!)!
//let temp = NSNumber(value: num)
//let str = downNumberFormatter.string(from: temp)!
//print(str)
//
//let temp2 = NSNumber(value: Float(str)!)
//let answer = roundNumberFormatter.string(from: temp2)
//print(answer!)


// 5. 연월일 시간 입력받아 형식에 맞게 출력
// 키워드 : DateFormatter

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy.mm.dd"

//let a = readLine()!
//let date = dateFormatter.date(from: a)!
//print("\(dateFormatter.string(from: date))")


// 6. 문자열 다루기!
// 키워드 : 문자열

//let string = readLine()!
//let start = string.startIndex
//let end = string.index(start, offsetBy: 49)
//let newStr = string[start...end]
//print(newStr)


// 7.실수 한 개가 입력된다. (단, 입력 값은 절댓값이 정수부가 100,000을 넘지 않으며, 소수점 이하는 0으로 시작하지 않으며, 6자리이하이다.)
// String to Character Array
// 1.414213
//let num = readLine()!.map{$0}
//for char in num {
//    print("\'\(char)\'")
//}

// 8. 진수 바꾸기
// 10진수 -> n진수
//let num = Int(readLine()!)!
//let hexa = String(num, radix: 16).uppercased()
//print(hexa)

// n진수 -> 10진수
//let string = readLine()!
//let octa = Int(string, radix: 8)!
//print(octa)
















