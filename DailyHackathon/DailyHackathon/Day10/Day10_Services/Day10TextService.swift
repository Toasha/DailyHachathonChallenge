import Foundation
import Combine

struct Day10_TextService {
    //async:非同期処理であることを宣言
    //throws:処理の途中でエラーを曲げる可能性があることを明示
    //コールバック関数:関数に引数として渡される関数
    func fetchText() async throws -> String {
        try await Task.sleep(nanoseconds: 1_000_000_000)
        
        if Bool.random() {
            return "成功しました"
        }else{
            throw URLError(.badServerResponse)
        }
    }
}
