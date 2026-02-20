import Foundation
import Combine

@MainActor
final class Day10_LoadingViewModel: ObservableObject {
    
    @Published var state: Day10_LoadState = .idle
    
    private let service = Day10_TextService()
    
    func load() {
        Task{
            state = .loading
            
            do{
                let text = try await self.service.fetchText()
                state = .loaded(text)
            }catch {
                state = .fail("取得に失敗しました")
            }
        }
    }
}

