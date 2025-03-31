//
//  main.swift
//  SwiftDay02Ex01
//
//  Created by 김규철 on 1/23/25.
//

// 이것은 한줄 주석입니다.
/*
 이것은
 여러줄 주석입니다.
 /*
  중첩된 여러줄 주석
  */
 */

/*
import Foundation

let 안녕 = "안녕하세요."
print("Hello, World!", terminator: "")
print("안녕하세요.")
print(안녕)

var age: Int = 0
var result = "미성년자"

print("나이 입력: ", terminator: "")
age = Int(readLine() ?? "0") ?? 0

if age > 18 {
    result = "성인"
} else {
    result = "미성년자"
}
*/

// 의사 코드
/*
 1. 각각 다른 정수 3개 입력
    1.1 변수 선언 : num1, num2, num3
    1.2 정수 3개 순서대로 입력
 2. 각각 비교해서 큰수, 중간수, 작은수를 판별한다.
    2.1 결과 변수 선언 : 큰수(max), 중간(mid), 작은수(min)
    2.2 입력 받은 수중 2개를 비교해서 큰것은 max에 저장
    2.3 작은 것은 min에 저장
    2.4 입력 받은 나머지 수를 max나 min 비교
        2.4.1 max보다 크다면 기존 max는 min이 되고 나머지가 max
        2.4.2 max보다 작다면 min과 비교하고 min보다 작다면 나머지가 min, 기존 min은 mid
        2.4.3 max보다 크지 않고 min 보다 작지 않으면 나머지 숫자가 mid
 3. max, mid, min을 순서대로 출력한다.
 

// 입력 받을 변수 선언 또는 let으로 선언해서 상수로 받을 수 있음
var num1:Int?, num2:Int?, num3:Int?
var max = 0, mid = 0, min = 0

// 입력 (언랩핑)
print("각각 다른 정수 3개 입력 : ", terminator: "")
num1 = Int(readLine() ?? "0") ?? 0
num2 = Int(readLine() ?? "0") ?? 0
num3 = Int(readLine() ?? "0") ?? 0

print("입력 받을 정수는 \(num1!), \(num2!), \(num3!) 입니다.")

if num1! > num2! {
    max = num1!
    min = num2!
} else {
    max = num2!
    min = num1!
}

// 비교하지 않은 나머지 숫자인 num3을 max,min과 각각 비교
if max < num3! {
    mid = max
    max = num3!
} else if min > num3! {
    mid = min
    min = num3!
} else {
    mid = num3!
}

print("max:\(max), mid:\(mid), min:\(min)")


print("점수를 입력하세요:")
if let input = readLine(), let score = Int(input) {
    switch score {
    case 90...100:
        print("A")
    case 80..<90:
        print("B")
    case 70..<80:
        print("C")
    case 60..<70:
        print("D")
    default:
        print("F")
    }
} else {
    print("유효한 점수를 입력하세요")
}


let size = 10
var total: Int = 0
for num in 1...size {
    total += num
}
print("1부터 10까지의 합은 \(total)입니다.")
 */

