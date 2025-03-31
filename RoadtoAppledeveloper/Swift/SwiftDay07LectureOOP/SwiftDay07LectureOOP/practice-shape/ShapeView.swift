//
//  test.swift
//  SwiftDay07LectureOOP
//
//  Created by 김규철 on 2/6/25.
//

// Super class
class Shape {
    func draw() {
        print("도형을 그립니다.")
    }
}

// Shape 확장한 Rectangle 클래스를 만들고
// draw() 메서드를 오버라이드 하세요.

class Circle: Shape {
    override func draw() {
        print("원을 그립니다.")
    }
}


class Rectangle: Shape {
    override func draw() {
        print("사각형을 그립니다.")
    }
}

class ShapeView {
    // Array 선언
    // 빈 배열 생성
    // let shapeList = [Shape]()
    // 선과 동시에 초기화
    // let shapeList = [Circle(), Rectangle(), Circle(), Rectangle()]
    // 빈 배열에 데이터 추가: append() 사용.
    var shapeList: [Shape] = []
    
    init() {
        // init()함수의 목적은 초기화
        shapeList = [Circle(), Rectangle()]
    }
    
    func showList() {
        for shape in shapeList {
            shape.draw()
        }
    }
    
    // let을 var로 변경 하면 수정 가능
    /* func appendShape(choice: Int) {
        //shapeList.append(choice == 1 ? Circle() : Rectangle() )
        
         if choice == 1 {
            shapeList.append(Circle())
            if choice == 2 {
                shapeList.append(Rectangle())
            }
        */
    
    func appendShape(choice: Int, newShapeList: [Shape]) -> [Shape] {
        // 함수형 프로그래밍 방식
        var shape: Shape!
        if choice == 1 {
            shape = Circle()
        }
        if choice == 2 {
            shape = Rectangle()
        }
        return newShapeList.count > 2 ? newShapeList + [shape] : shapeList + newShapeList + [shape]
    }
    
            func main() {
                
                // 5회 반복 Shape 생성
                // 1번째 생성 할 객체 타입 선택 (1)Circle (2)Rectangle: 1
                // 리스트에 Circle 객체 추가 완료!
                // 2번째 생성 할 객체 타입 선택 (1)Cicle (2)Rectangle: 2
                // 리스트에 Rectangle 객체 추 완료!
                // 3번째 생성 할 객체 타입 선택 (1)Circle (2)Rectangle: 3
                
                var newShapeList: []
                for i in 1...5 {
                    print("\(i)번째 생성 할 객체 타입 선택 (1)Circle (2)Rectangle", terminator: ": ")
                    let choice: Int = Int(readLine() ?? "") ?? 0
                    // appendShape(choice: choice)
                    
                }
            }
            
        }
        
