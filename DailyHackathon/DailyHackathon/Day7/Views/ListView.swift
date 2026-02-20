//import SwiftUI
//
//struct ListView: View {
//    @Binding var fruits: [Fruit]
//    
//    var body: some View {
//        List($fruits) { $fruit in
//            HStack{
//                Text(fruit.name)
//                Spacer()
//                Button{
//                    fruit.isFavorite.toggle()
//                }label: {
//                    Image(systemName: fruit.isFavorite ? "star.fill" : "star")
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    ListView(fruits: .constant([]))
//}
