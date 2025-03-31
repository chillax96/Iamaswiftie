//
//  ContentView.swift
//  SwiftUIDay02
//
//  Created by 김규철 on 2/11/25.
//

import SwiftUI

struct ContentView: View {          // : View >> 뷰 타입으로 만든다.
    var body: some View {
        VStack {
            Text("SwiftUI 실습")
                .font(.largeTitle)
                .foregroundColor(.red)
                .padding()          // padding은 순서가 중요하다
                .background(.yellow)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 6)
                )
                .padding()
        }
            }
        
        
    }


#Preview {
    ContentView()
}
