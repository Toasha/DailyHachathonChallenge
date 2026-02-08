import SwiftUI

struct StepperView: View {
    @State private var stepperValue1: Int = 0
    @State private var stepperValue2: Int = 0
    
    var body: some View {
        Form{
            Section(header: Text("Stepper1")){
                Stepper(value: $stepperValue1){
                    Text("\(stepperValue1)")
                }
            }
            Section(header: Text("Stepper2")) {
                Stepper(value: $stepperValue2, in: 0...10){
                    Text("\(stepperValue2)")
                }
            }
        }
    }
}

#Preview {
    StepperView()
}
