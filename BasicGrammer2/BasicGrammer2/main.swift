//
//  main.swift
//  BasicGrammer2
//
//  Created by CHUNGEUNJI on 30/06/2019.
//  Copyright © 2019 CHUNGEUNJI. All rights reserved.
//

import Foundation

// 진수 연산 함수들
func getBinary(num: String) -> Int {
    return Int(String(Int(num)!, radix: 2))!
}

func getHexa(num: String) -> Int {
    return Int(String(Int(num)!, radix: 8))!
}

func getOcta(num: String) -> String {
    return String(Int(num)!, radix: 16)
}

func getBinaryToDecimal(num: String) -> Int {
    return Int(num, radix: 2)!
}

func getHexaToDecimal(num: String) -> Int {
    return Int(num, radix: 8)!
}

func getOctaToDecimal(num: String) -> Int {
    return Int(num, radix: 16)!
}


// 아스키ASCII 코드 & 유니코드 Unicode
func getASCIItoChar(ascii: UInt8) -> Character {
    return Character(UnicodeScalar(ascii))
}

// 0 <-> 1
func reverseNumber(num: Int) -> Int {
    if num == 0 { return 1 }
    else { return 0 }
}



print("Enter:")

// 1. 논리연산
//let nums = readLine()!.components(separatedBy: " ").map { UInt($0)! }
//
//let xor = nums[0] | nums[1]
//print(xor==0 ? 1 : 0)


// 2. 비트단위 연산
//let num = readLine()!
//let binary = getBinary(num: num)
//print(binary)
//let decimal = getBinaryToDecimal(num: "\(~binary)")
//print(decimal)


// 3. 3 5 -> XOR 6
//let nums = readLine()!.components(separatedBy: " ").map { String($0) }
//let first = getBinary(num: nums[0])
//let second = getBinary(num: nums[1])
//print(first)
//print(second)
//let xor = first | second
//print(xor)
//let decimal = getBinaryToDecimal(num: "\(xor)")
//print(decimal)

// 4.
//print((nums[0] < nums[1] ? nums[0] : nums[1]) < nums[1] ? (nums[0] < nums[1] ? nums[0] : nums[1]): nums[1])

// 65. 66.
//let nums = readLine()!.components(separatedBy: " ").map { Int($0)! }
//
//for index in nums {
//    if index < 0 {
//        print("minus")
//    } else {
//        print("plus")
//    }
//
//    if index % 2 == 0 {
//        print("even")
//    } else {
//        print("odd")
//    }
//}


// 68.
//let num = Int(readLine()!)!
//
//switch num {
//case 90 ... 100:
//    print("A")
//case 70...89:
//    print("B")
//case 40...69:
//    print("C")
//case 0...39:
//    print("D")
//default:
//    print("Nothing...")
//}

// 69. 70.

//let num = Int(readLine()!)!
//
//switch num {
//case 12,1,2:
//    print("winter")
//case 3,4,5:
//    print("spring")
//case 6,7,8:
//    print("summer")
//case 9,10,11:
//    print("fall")
//default:
//    print("...")
//}


// 71.

//let nums = readLine()!.components(separatedBy: " ").map { Int($0)! }
//
//for index in nums {
//    print(index)
//    if index == 0 { exit(0) }
//}


// 72.
//var num = Int(readLine()!)!
//
//while num > 0 {
//    print(num-1)
//    num -= 1
//}


// 76.
//let char = Character(readLine()!)
//var temp:Character = "a"
//var str = ""
//
//str += "\(temp)"
//while temp != char {
//    var asci = temp.asciiValue!
//    asci += 1
//    temp = getASCIItoChar(ascii: asci)
//    str += " \(temp)"
//}
//
//print(str)


// 77.
//let num = Int(readLine()!)!
//
//for index in 0...num {
//    print(index)
//}


// 79.
//
//while true {
//    let char = readLine()!
//    print(char)
//    if "q" == char { exit(0) }
//}


// 80. 언제까지 더해야할까?
//let num = Int(readLine()!)!
//var total = 0
//
//for i in 0...1000 {
//    total += i
//    if total >= num {
//        print(i)
//        exit(0)
//    }
//}


// 81.
//let nums = readLine()!.components(separatedBy: " ").map { Int($0)! }
//
//for i in 1...nums[0] {
//    for j in 1...nums[1] {
//        print("\(i) \(j)")
//    }
//}


// 82. 16진수 구구단
//let octa = readLine()!
//let decimal = getOctaToDecimal(num: octa)
//
//for i in 1...15 {
//    let sum = getOcta(num: "\(decimal*i)")
//    let index = getOcta(num: "\(i)")
//    print("\(octa)*\(index)=\(sum)".uppercased())
//}


// 84. 경우의 수 출력하기
//let nums = readLine()!.components(separatedBy: " ").map { Int($0)! }
//
//for i in 0...nums[0]-1 {
//    for j in 0...nums[1]-1 {
//        for k in 0...nums[2]-1 {
//            print("\(i) \(j) \(k)")
//        }
//    }
//}
//
//print(nums[0]*nums[1]*nums[2])



// 85. 소리파일 저장용량

//let twoByte = 8 * 2
//let twoKB = 2 * pow(Decimal(twoByte), 10)
//let MB = pow(twoKB, 10) as NSDecimalNumber
//print(MB)

//let total:Double = Double(nums[0]*nums[1]*nums[2]*nums[3])
//let sum = total/8.0/1024.0/1024.0
//
//let numberFormatter = NumberFormatter()
//numberFormatter.minimumFractionDigits = 1
//numberFormatter.maximumFractionDigits = 1
//
//let value = numberFormatter.string(for: sum)!
//print(value + " MB")

// 86. 그림파일 저장
//let nums = readLine()!.components(separatedBy: " ").map { Int($0)! }
//var total = Double(nums[0]*nums[1]*nums[2])/8.0/1024.0/1024.0
//let formatter = NumberFormatter()
//formatter.minimumFractionDigits = 2
//formatter.maximumFractionDigits = 2
//print(formatter.string(for: total))


// 87.
//let num = Int(readLine()!)!
//var index = 1
//
//while true {
//    if index*(index+1) >= num*2 {
//
//    }
//    index += 1
//}


// 88.
//let num = Int(readLine()!)!
//var i = 1
//
//while i < num {
//    if i % 3 == 0 { continue }
//    print(i)
//    i += 1
//}

// 89. 91.
//let nums = readLine()!.components(separatedBy: " ").map { Int($0)! }
//var day = 1
//
//while (day%nums[0] != 0 || day%nums[1] != 0 || day%nums[2] != 0) {
//    day += 1
//}
//
//print(day)


// 93. 94.
//
//var student = [Int](repeating: 0, count: 23)
//for i in nums {
//    student[i-1] += 1
//}
//
//for person in student {
//    print(person, terminator: " ")
//}


//let num = Int(readLine()!)!
//let nums = readLine()!.components(separatedBy: " ").map { Int($0)! }
//let newArray = nums.reversed()
//
//for i in newArray {
//    print(i, terminator: " ")
//}



// 95.
//let num = Int(readLine()!)!
//let nums = readLine()!.components(separatedBy: " ").map { Int($0)! }
//let newArr = nums.sorted()
//print(newArr[0])


// 96.
//var board : [[Int]] = Array(repeating: Array(repeating: 0, count: 19), count: 19)
//let nums = Int(readLine()!)!
//
//for _ in 1...nums {
//    let position = readLine()!.components(separatedBy: " ").map { Int($0)! }
//    board[position[0]-1][position[1]-1] = 1
//}
//
//for i in 0...18 {
//    for j in 0...18 {
//        print(board[i][j], terminator: " ")
//    }
//    print("")
//}

// 97.
//var board : [[Int]] = Array(repeating: Array(repeating: 0, count: 19), count: 19)
//
//for i in 0...18 {
//    board[i] = readLine()!.components(separatedBy: " ").map { Int($0)! }
//}
//
//let num = Int(readLine()!)!
//
//
//func reverseCross(_ row: Int, _ column: Int) {
//    for i in 0...18 {
//        board[row-1][i] = reverseNumber(num: board[row-1][i])
//        board[i][column-1] = reverseNumber(num: board[i][column-1])
//    }
//}
//
//for _ in 1...num {
//    let cross = readLine()!.components(separatedBy: " ").map { Int($0)! }
//    reverseCross(cross[0], cross[1])
//}
//
//for i in 0...18 {
//    for j in 0...18 {
//        print(board[i][j], terminator:" ")
//    }
//    print("")
//}

// 98.

//let size = readLine()!.components(separatedBy: " ").map { Int($0)! }
//var board : [[Int]] = Array(repeating: Array(repeating: 0, count: size[0]), count: size[1])
//
//
//func putOnStick(len:Int, d:Int, ro:Int, column:Int) {
//    var row = ro-1
//    var col = column-1
//
//    if d == 0 // 가로
//    {
//        for _ in 1...len {
//            board[row][col] = 1
//            col += 1
//        }
//    }
//    else // 세로
//    {
//        for _ in 1...len {
//            board[row][col] = 1
//            row += 1
//        }
//    }
//}

//
//let num = Int(readLine()!)!
//
//for _ in 1...num {
//    let nums = readLine()!.components(separatedBy: " ").map { Int($0)! }
//    putOnStick(len: nums[0], d: nums[1], ro: nums[2], column: nums[3])
//}
//
//
//for i in 0...size[0]-1 {
//    for j in 0...size[1]-1 {
//        print(board[i][j], terminator:" ")
//    }
//    print("")
//}


// 99.
var board: [[Int]] = Array(repeating: Array(repeating: 0, count: 10), count: 10)

for i in 0...9 {
    board[i] = readLine()!.components(separatedBy: " ").map { Int($0)! }
}

var i = 1
var j = 1

while true {
    if board[i][j] == 2 { break }
    else {
        board[i][j] = 9
        // 오른쪽으로 간다
        if board[i][j+1] != 1 { j += 1 }
        // 아래로 간다
        else if board[i+1][j] != 1 { i += 1 }
        else { break }
    }
}


for i in 0...9 {
    for j in 0...9 {
        print(board[i][j], terminator:" ")
    }
    print("")
}

























