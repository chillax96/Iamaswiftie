//
//  ContentView.swift
//  SwiftDay04Ex03DatePicker
//
//  Created by 김규철 on 2/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            TextFieldExample()
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
