//
//  PickerExample.swift
//  SwiftDay04Ex03DatePicker
//
//  Created by 김규철 on 2/13/25.
//

import SwiftUI

struct PickerExample: View {
    @State private var selectedColor = "Red"
    let colors = ["Red", "Green", "Blue"]

    var body: some View {
        VStack {
            Text("선택한 색상: \(selectedColor)")
            Picker("색상 선택", selection: $selectedColor) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            // .pickerStyle(SegmentedPickerStyle())`: **세그먼트 컨트롤** 스타일
            // .pickerStyle(WheelPickerStyle())`: **휠 스타일**
            .padding()
        }
    }
}

#Preview {
    PickerExample()
}
