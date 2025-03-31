//
//  HomeView.swift
//  SwiftUIDay02ShopStep01
//
//  Created by 김규철 on 2/11/25.
//


import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ProductListView()
                .navigationTitle("과일마트")
        }
    }
    }

#Preview {
    HomeView()
}
