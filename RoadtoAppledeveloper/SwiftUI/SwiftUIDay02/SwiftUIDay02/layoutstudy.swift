//
//  layoutstudy.swift
//  SwiftUIDay02
//
//  Created by 김규철 on 2/11/25.
//

import SwiftUI

struct layoutstudy: View {
    var body: some View {
        VStack {
            HStack {
                Text("이름:")
                    .font(.headline)
                Text("김규철")
                    .font(.body)
            }
            .padding()
            
            ZStack {
                Color.gray
                Text("중첩된 Zstack")
                    .foregroundStyle(.white)
                    .font(.title)
            }
            .frame(height: 300)
            .cornerRadius(30)
        }
    }
}

#Preview {
    layoutstudy()
}
