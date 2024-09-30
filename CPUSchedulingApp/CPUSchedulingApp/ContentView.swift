import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = SchedulingViewModel()
    @State private var processes: [Process] = []  // Array to store processes
    @State private var selectedAlgorithm: SchedulingAlgorithm = SJFAlgorithm()

    var body: some View {
        VStack {
            ProcessInputView(processes: $processes)  // Bind the processes array
            Button("Run Scheduling") {
                // Call the function with the array of processes
                viewModel.calculateTimes(processes: processes, algorithm: selectedAlgorithm)
            }
            GanttChartView(viewModel: viewModel)
            BarGraphView(viewModel: viewModel)
        }
        .padding()
    }
}

