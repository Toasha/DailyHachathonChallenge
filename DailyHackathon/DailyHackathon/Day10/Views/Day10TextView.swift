import SwiftUI

struct Day10_TextView: View {
    //通知が来るたびに更新される
    @StateObject private var vM = Day10_LoadingViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            //viewBuilderを呼び出す
            content
            
            Button("テキストを取得") {
                vM.load()
            }
            //読み込み中はボタンを押せないようにする
            .disabled(vM.state == .loading)
        }
        .padding()
    }
    
    //条件分岐で表示するviewの定義に必要
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
