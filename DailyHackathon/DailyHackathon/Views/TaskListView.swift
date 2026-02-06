// TaskListView.swift

import SwiftUI

struct TaskListView: View {

    @State private var tasks: [Task] = [
        Task(task: "Task 1"),
        Task(task: "Task 2"),
        Task(task: "Task 3")
    ]
    
    @State private var selectedIDs: Set<Task.ID> = []
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks) { item in
                    HStack {
                        Image(systemName: selectedIDs.contains(item.id) ? "checkmark.circle.fill" : "circle")
                            .symbolRenderingMode(.palette)
                            .imageScale(.large)
                            .foregroundStyle(
                                selectedIDs.contains(item.id) ? Color.green : Color.primary
                            )
                        Text(item.task)
                            .foregroundColor(.primary)
                        
                        Spacer()
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        toggleSelection(of: item.id)
                    }
                }
                .onDelete(perform: remove)
            }
            .navigationTitle(Text("Tasks"))
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        isPresented = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $isPresented) {
                AddView(tasks: $tasks)
            }
        }
    }
    private func toggleSelection(of id: Task.ID) {
        if selectedIDs.contains(id) {
            selectedIDs.remove(id)
        } else {
            selectedIDs.insert(id)
        }
    }
    private func remove(at offsets: IndexSet) {
        let removedIDs = offsets.map { tasks[$0].id }
        tasks.remove(atOffsets: offsets)
        selectedIDs.subtract(removedIDs)
    }
}

#Preview {
    TaskListView()
}

