import SwiftUI

struct ProcessInputView: View {
    @State private var arrivalTime = ""
    @State private var burstTime = ""
    @State private var priority = ""
    
    @Binding var processes: [Process]  // Binding to the processes array

    var body: some View {
        VStack {
            TextField("Arrival Time", text: $arrivalTime)
                .keyboardType(.numberPad)
            TextField("Burst Time", text: $burstTime)
                .keyboardType(.numberPad)
            TextField("Priority", text: $priority)
                .keyboardType(.numberPad)
            
            Button("Add Process") {
                if let at = Int(arrivalTime), let bt = Int(burstTime), let pr = Int(priority) {
                    let newProcess = Process(id: UUID(), arrivalTime: at, burstTime: bt, priority: pr)
                    processes.append(newProcess)
                    arrivalTime = ""
                    burstTime = ""
                    priority = ""
                }
            }
            
            List(processes) { process in
                Text("P\(process.id) - Arrival: \(process.arrivalTime), Burst: \(process.burstTime), Priority: \(process.priority)")
            }
        }
        .padding()
    }
}

