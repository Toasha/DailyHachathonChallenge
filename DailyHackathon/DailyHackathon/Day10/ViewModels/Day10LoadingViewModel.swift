import Foundation
import Combine

@MainActor
//画面の更新に係る処理はメインスレッドとして使う
//finalクラスはこれ以上継承できないクラス
final class Day10_LoadingViewModel: ObservableObject {      //自分のデータが変わったらviewに通知するというプロトコル
    
    @Published var state: Day10_LoadState = .idle
    
    private let service = Day10_TextService()
    
    func load() {
        Task{       //非同期処理を始めるための箱
            state = .loading
            
            do{
                //awai:処理が終わるまで待機する、結果が帰ってきてから次の行に進むコマンド
                let text = try await self.service.fetchText()
                state = .loaded(text)
            }catch {
                state = .fail("取得に失敗しました")
            }
        }
    }
}

