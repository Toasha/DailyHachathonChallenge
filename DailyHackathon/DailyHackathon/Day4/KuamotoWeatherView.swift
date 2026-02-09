import SwiftUI

struct KumamotoWeatherView: View {
    @State private var weather = " "
    var body: some View {
        VStack{
            Text("Kumamoto Weather View")
            
            Text(weather)
        }
        .task {
            await fetchWeather()
        }
    }
    
    private func fetchWeather()  async{
        guard let url = URL(string: "https://www.jma.go.jp/bosai/forecast/data/forecast/430000.json") else{
            weather = "Error"
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let jsonString = String(data: data, encoding: .utf8) ?? "Error"
            
            let prefixText = String(jsonString.prefix(100))
            weather = prefixText
        }catch {
            weather = "cant fetch data"
                }
    }
}

#Preview {
    KumamotoWeatherView()
}
