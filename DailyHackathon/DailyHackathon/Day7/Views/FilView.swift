import SwiftUI
struct FilView: View {
    @Binding var fruits: [Fruit]
    @Binding var isFiltering: Bool
    
    var filtered: [Fruit] {
        fruits.filter { $0.isFavorite }
    }
    
    var body: some View {
        if isFiltering {
            List(filtered) { fruit in
                HStack {
                    Text(fruit.name)
                    Spacer()
                    Image(systemName: fruit.isFavorite ? "star.fill" : "star")
                        .foregroundColor(.yellow)
                }
            }
        } else {
            Text("お気に入りはまだありません")
        }
    }
}

#Preview {
    FilView(fruits: .constant([Fruit(name: "aa", isFavorite: true ), Fruit(name: "bb", isFavorite: false)]), isFiltering: .constant(true))
}
