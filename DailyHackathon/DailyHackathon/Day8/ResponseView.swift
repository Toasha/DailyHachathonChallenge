//import SwiftUI
//import Foundation
//
//struct ResponseView: View {
//    
//    @State private var activityText = ""
//    
//    var body: some View {
//        VStack {
//            Button("apiを叩く") {
//                onTap()
//            }
//            
//            Text(activityText)
//                .padding()
//        }
//    }
//    
//    private func onTap() {
//        Task {
//            do {
//                let response = try await fetchActivityAsync()
//                activityText = "名前: \(response.name) 年齢予測: \(response.age ?? 0)"
//            } catch {
//                print("エラー\(error)")
//                activityText = "取得失敗"
//            }
//        }
//    }
//
//}
//
//#Preview {
//    ResponseView()
//}
