import Foundation

struct Task: Identifiable, Hashable{
    let id = UUID()
    let task: String
    var isFinished = false
}
