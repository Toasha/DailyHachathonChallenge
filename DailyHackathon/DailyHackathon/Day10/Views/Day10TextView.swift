import SwiftUI

struct Day10_TextView: View {
    
    @StateObject private var vM = Day10_LoadingViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            
            content
            
            Button("テキストを取得") {
                vM.load()
            }
            .disabled(vM.state == .loading)
        }
        .padding()
    }
    
    @ViewBuilder
    private var content: some View {
        switch vM.state {
        case .idle:
            Text("ボタンを押してください")
            
        case .loading:
            ProgressView("Loading...")
            
        case .loaded(let text):
            Text(text)
                .font(.title)
            
        case .fail(let message):
            Text(message)
                .foregroundColor(.red)
        }
    }
}

#Preview {
    Day10_TextView()
}
