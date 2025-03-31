// 실습 문제 4번

import SwiftUI

struct fruitslist: View {
    let fruits = ["Apple", "Banana", "Cherry", "Mango"] // 글로벌, 로컬, 멤버* 구분
    
    var body: some View {
        Text("과일 목록")
            .font(.largeTitle)
        
        List {
            ForEach(fruits, id: \.self) { fruit in      // ForEach 복습하기!
                Text(fruit)
                    .font(.title)
                    .foregroundColor(.green)
                    .padding(3)
            }
        }

    }
}

#Preview {
    fruitslist()
}
