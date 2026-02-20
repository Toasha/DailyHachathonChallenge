//import Foundation
//
//class ApiClient{
//    let url: URL
//    
//    init() {
//        //URL構造体のインスタンス化、引数にストリング型でURLを渡す
//        guard let url = URL(string: "https://api.agify.io/?name=Rin") else { fatalError("Invalid URL")
//        }
//        self.url = url
//    }
//}
//
////リクエストの定義
//struct Request{
//    //staticを使うと構造体名.関数()のようにインスタンス化しなくてもメソッドにアクセスできるようになる
//    //パラメータやapiキーとかもここで入れてく
//    static func getActivities() -> URLRequest{      //URLRequest構造体を返り値にしてる
//        var request = URLRequest(url: ApiClient().url)
//        request.httpMethod = "GET"
//        return request
//    }
//}
//
//func fetchActivityAsync() async throws -> AgeResponse {
//    let request = Request.getActivities()
//    //URLセッション：通信を担当するクラス、.shared：アプリ全体で一つの通信を使いまわそうという設定、data(for:reqest)：リクエストを使ってデータを取ってきてという命令
//    let (data, _) = try await URLSession.shared.data(for: request)  //data()はメソッド
//    return try JSONDecoder().decode(AgeResponse.self, from: data)
//}
//
