/*
import Foundation

print("Hello, World!")

// 빈 배열 선언
var arr: [Int] = []
// 배열 리터럴을 이용한 초기화
let arr2: [Int] = [33, 44, 55, 66]

// 배열의 맨 마지막 요소로
arr.append(100) // arr[0]
arr.append(101) // arr[1]
arr.append(102) // arr[2]
arr.append(103) // arr[3]

// 배열의 전체 요소 확인
print(arr)

// for in문을 이용한 내용 확인
// 배열 요소의 수 만큼 자동 반복
for number in arr {
    print(number, terminator: " ")
}
print()

// 2번 index의 요소 제거 (at: 인덱스)
// 2번 index는 3번째 요소 (0부터 시작)
arr.remove(at: 2)
print(arr)

// 1번 index의 요소 확인, arr[3]은 현재 없음.
print("첨자로 배열 요소 접근하기", arr[0], arr[1], arr[3])

// 두배열을 합쳐서 확인 하기
let resultarr: [Int] = arr2 + arr
print(resultarr)
*/

// 각 월의 날짜수를 저장한 배열
let monthDays: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
//               index  0   1   2   3   4   5   6   7   8   9   10  11
//               month  1   2   3   4   5   6   7   8   9   10  11  20
var month: Int = 0
var days: Int = 0

// 날짜 수를 알고자 하는 월 입력: 2
// 2월은 28일까지만 있다고 가정
print("날짜 수를 알고자 하는 달을 입력: ", terminator: "")
month = Int(readLine() ?? "") ?? 0
days = monthDays[month - 1]
print("결과 \(month)월은 \(days)일까지 있다.")

// monthDays를 이용해서 1년은 365일까지 있다는것을 출력
// total변수에 monthDays의 모든 요소를 for in으로 누적
var total: Int = 0
for days in monthDays {
    total += days
}
print("1년은 \(total)일입니다.")

/* 문제1) 특정 월,일을 입력 받아서 1월 1일부터 입력된 월, 일까지의 누적 날짜 수 출력.
    예)
    월 입력: 4
    일 입력: 10
    1월 1일부터 4월 10일까지의 누적일은 100일입니다.
*/

/* 문제2) 월,일을 입력 받아서 100일 후의 월,일 출력
    월 입력: 11월
    일 입력: 21일
    11월 21일의 100일 후는 0월 0일입니다.
 */

// Weekly Project 안내
// 1)전화번호부 구현 (입력, 출력, 검색, 수정, 삭제 기능)
// 2) 회고 시스템 CRUD 기능 구현 (개선해서 만드는 것을 권장합니다.)




