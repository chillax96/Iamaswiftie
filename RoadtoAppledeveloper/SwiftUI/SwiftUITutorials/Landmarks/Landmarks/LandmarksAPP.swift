//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 김규철 on 2/14/25.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
