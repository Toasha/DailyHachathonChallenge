//
//  MainTabView.swift
//  DailyHackathon
//
//  Created by yano syoudai on 2026/02/13.
//

import SwiftUI

struct MainTabView: View {
    @State private var count = 0
    var body: some View {
        TabView{
            Tab1View(count:$count)
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
            Tab2View(count: $count)
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
