//
//  Tab1View.swift
//  DailyHackathon
//
//  Created by yano syoudai on 2026/02/13.
//

import SwiftUI

struct Tab1View: View {
    @Binding var count: Int
    var body: some View {
        VStack{
            Text("\(count)")
            
            Button{
                count += 1
            }label: {
                Text("plus")
            }
        }
    }
}

#Preview {
    Tab1View(count: .constant(0))
}
