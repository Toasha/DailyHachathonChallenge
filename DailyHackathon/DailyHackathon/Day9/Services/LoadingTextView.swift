import SwiftUI

struct LoadingTextView: View {
    
    @State private var state: LoadState = .idle
    
    var body: some View {
        VStack(spacing: 20) {
            
            content
            
            Button("Load") {
                Task {
                    do{
                        state = .loading
                        let text = try await TextService().fetchText()
                        state = .loaded(text)
                    }catch{
                        state = .error
                    }
                }
            }
        }
        .padding()
    }
    
    @ViewBuilder
    private var content: some View {
        switch state {
        case .idle:
            Text("idle")
            
        case .loading:
            ProgressView("Loading...")
            
        case .loaded(let text):
            Text(text)
        
        case .error:
            Text("404")
        }
    }
}

#Preview {
    LoadingTextView()
}
