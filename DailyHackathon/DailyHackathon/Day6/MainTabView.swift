//
//  MainTabView.swift
//  DailyHackathon
//
//  Created by yano syoudai on 2026/02/13.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            Tab1View()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
            Tab2View()
                .tabItem {
                    Text("Search")
                    Image(systemName: "magnifyingglass")
                }
        }
    }
}

#Preview {
    MainTabView()
}
