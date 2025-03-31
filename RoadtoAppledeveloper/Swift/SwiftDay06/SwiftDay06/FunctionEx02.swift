//  FunctionEx02.swift
//  SwiftDay06

struct FunctionEx02 {
    
    func run() {
        print("FunctionEx02.run()")
        
        // 다중 반환 값 예제
        let userInfo = getUserInfo()
        print("\(userInfo.name)님은 \(userInfo.age)세 입니다")
    }
    
    // 이름과 나이를 입력 받는 함수
    func getUserInfo() -> (name: String, age: Int) {
        return (name: readLine()!, age: Int(readLine()!)!)
    }
}
