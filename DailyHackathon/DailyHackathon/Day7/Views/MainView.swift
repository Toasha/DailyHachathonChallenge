//
//  MainTabView.swift
//  DailyHackathon
//
//  Created by yano syoudai on 2026/02/14.
//

import SwiftUI

struct MainView: View {
    @State private var fruits: [Fruit] = [
        Fruit(name:"apple",isFavorite: false ),
        Fruit(name:"banana",isFavorite: false ),
        Fruit(name:"orange",isFavorite: false )
    ]
    @State private var isFiltering: Bool = false
    
    var body: some View {
        TabView {
            ListView(fruits: $fruits)
                .tabItem {
                    Label("Fruits", systemImage: "list.bullet")
                }
            SettingsView(isFiltering: $isFiltering)
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
            FilView(fruits: $fruits, isFiltering: $isFiltering)
                .tabItem {
                    Label("Filtered", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    MainView()
}
