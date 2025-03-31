// 높다 낮다 게임 구현
// Step 01
// 시스템이 1~100 사이의 난수를 발생.
// 사용자가 정답을 입력해서 맞추는 프로그램.
// 6회 시도 안에 맞추는 프로그램.
// 틀린답을 넣으면 입력 범위가 줄어 들어야 한다.
// Step 02
// 한 게임이 끝나면 재시도 여부 물어 보기
// 재시도 하면 모든 변수가 초기화 되면서 다시 시작.

import Foundation

while true {
    print(":::: 높다 낮다 게임 ::::")
    
    // 난수 발생기
    // 낙타봉 표기법 myName <---> 뱀 표기법 my_name
    var min = 1
    var max = 100
    var sysNum = Int.random(in: min...max)
    var userNum = 0
    var cnt = 6
    
    print("시스템이 \(min)~\(max)사이의 번호를 하나 선택했습니다. (힌트: \(sysNum))")
    print("6회 시도 안에 정답을 맞춰 보세요.")
    
    while cnt > 0 {
        print("기회는 \(cnt)번 남았습니다.")
        // 사용자 번호를 userNum에 입력 받기 - readLine()
        // - 번호의 범위를 입력 받으라는 표시하기
        userNum = 0 // 새로운 값을 받기위해 초기값으로 변경.
        while userNum < min || userNum > max  {
            print("사용자 입력(\(min)~\(max)사이):", terminator:" ")
            // - 교안에서 정수 입렵 부분 찾아서 참고하기
            // - 입력 받은 정수를 확인하기
            // - 범위가 맞는지 유효성 검사
            if let inputStr = readLine(), let number = Int(inputStr) {
                userNum = number
            } else {
                print("입력 오류: 잘못 입력 하였습니다!")
            }
        }
        print("사용자 입력 성공 \(userNum)")
        
        // userNum과 sysNum 비교 - if ~ else 문
        // 백견이 불여일타, 독서백편의자현
        var result = false
        print("결과", terminator: ": ")
        if sysNum == userNum {
            print("빙고!", terminator: "")
            result = true
        } else {
            print("땡!", terminator: "")
        }
        // 정답인지 아닌지 표시 하기 - print()
        print("\(result ? "정답" : "틀림")", terminator: " - ")
        if !result {
            if userNum < sysNum {
                min = userNum + 1
                print("낮다!")
            } else {
                max = userNum - 1
                print("높다!")
            }
        } else {
            break
        }
        
        // 증감식 - 기회를 감소한다.
        cnt = cnt - 1
    }
    
    if cnt > 0 {
        print("\(6-cnt)회 만에 맞췄습니다.")
    }
    /*
     print("재시도 하겠습니까? ", terminator: "")
     var yn = readLine() ?? ""
     while yn != "y" && yn != "n" {
     print("y 또는 n만 입력 가능합니다.")
     print("재시도 하겠습니까? ", terminator: "")
     yn = readLine() ?? ""
     }
     내가 해본 부분 */
    
    // while 또는 repeat ~ while로 y 또는 n이 아니면 다시 입력 되도록 하세요.
    print("재시도 하겠습니까? ")
    var yn = "t"
    while !(yn == "y" || yn == "n") {
        print("(Y/N): ", terminator: "")
        yn = (readLine() ?? "").lowercased() //무조건 소문자로 값 입력
        print("-->" + yn)
    }
    // yn이 n이면 종료. 그렇지 않으면 재시도.
    if yn == "n" {
        break
    }
} // end of while loop
print("다음 기회에 다시 만나요. 새해 복 많이 받으세요.")
