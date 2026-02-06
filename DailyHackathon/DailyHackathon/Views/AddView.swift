
import SwiftUI

struct AddView: View {
    @State private var text: String = ""
    @Binding var tasks: [Task]
    @Environment(\.dismiss) private var dismiss
    var body: some View {
       VStack{
           TextField("Add a task", text: $text)
               .textFieldStyle(.roundedBorder)
           Button {
               tasks.append(Task(task: text))
               dismiss()
           }label: {
               Text("add")
           }
       }
        
    }
}

#Preview {
    //AddView()
}
