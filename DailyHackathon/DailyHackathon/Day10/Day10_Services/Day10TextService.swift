import Foundation
import Combine

struct Day10_TextService {
    func fetchText() async throws -> String {
        try await Task.sleep(nanoseconds: 1_000_000_000)
        
        if Bool.random() {
            return "成功しました"
        }else{
            throw URLError(.badServerResponse)
        }
    }
}
