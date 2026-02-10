//
//  SearchView.swift
//  DailyHackathon
//
//  Created by yano syoudai on 2026/02/10.
//

import SwiftUI

struct SearchView: View {
    let item = Item()
    @State var searchValue = ""
    var searchResult: [String] {
        if searchValue.isEmpty {
            return item.items
        }else{
            return item.items.filter{ $0.contains(searchValue)}
        }
    }
    var body: some View {
            NavigationStack{
                List(searchResult, id: \.self){item in
                    Text(item)
                }
                .searchable(
                    text: $searchValue,
                    placement: .navigationBarDrawer(displayMode: .always)
                )
                .navigationTitle("Day5")
            }
    }
}

#Preview {
    SearchView()
}
