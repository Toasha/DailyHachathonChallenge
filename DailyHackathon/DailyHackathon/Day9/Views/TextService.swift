import Foundation

struct TextService {
    func fetchText() async throws -> String {
        try await Task.sleep(nanoseconds: 2_000_000_000)
        return "非同期で取得"
    }
}
