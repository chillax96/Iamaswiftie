//
//  StyledimageView.swift
//  SwiftUIDay02
//
//  Created by 김규철 on 2/11/25.
//

import SwiftUI

struct StyledimageView: View {
    var body: some View {
        Image("GgVsSgdaQAAP2zR")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: 320)
            .padding()
    }
}

#Preview {
    StyledimageView()
}
