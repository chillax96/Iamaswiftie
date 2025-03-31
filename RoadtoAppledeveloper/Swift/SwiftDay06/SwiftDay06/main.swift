// main.swift
// SwiftDay06

import Foundation

print("Hello, World!")

// 1. 구조체 객체를 선언
// 2. 함수 호출

print("실행할 예제 번호 입력", terminator: ": ")
let no = Int(readline() ?? "0")

if no == 1 {
    // 객체 참조 변수를 이용하여 호춣
    let ex01 = FuntionEx()
    ex01.run()
}

if no == 2 {
    // 객체를 선언과 동시에 바로 호출
     FunctionEx02().run()
}

if no == 3 {
    // 객체를 선언과 동시에 바로 호출
    // 멤버를 초기화 시키는 용도
}
