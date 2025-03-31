//
//  SwiftUIStateDemoApp.swift
//  SwiftUIStateDemo
//
//  Created by 김규철 on 3/28/25.
//

import SwiftUI

@main
struct SwiftUIStateDemoApp: App {
    var body: some Scene {
        WindowGroup {
            UserListView()
                .environmentObject(UserViewModel())
        }
    }
}
