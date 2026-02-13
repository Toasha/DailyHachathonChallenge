//
//  Tab2View.swift
//  DailyHackathon
//
//  Created by yano syoudai on 2026/02/13.
//

import SwiftUI

struct Tab2View: View {
    @Binding var count: Int
    var body: some View {
        Text("\(count)")
    }
}

#Preview {
    Tab2View(count: .constant(0))
}
