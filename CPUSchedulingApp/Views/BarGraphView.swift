import SwiftUI

struct BarGraphView: View {
    @ObservedObject var viewModel: SchedulingViewModel

    var body: some View {
        VStack {
            Text("Waiting Times")
            HStack {
                ForEach(viewModel.waitingTimes.indices, id: \.self) { index in
                    VStack {
                        Text("\(viewModel.waitingTimes[index])")
                        Rectangle()
                            .frame(width: 20, height: CGFloat(viewModel.waitingTimes[index]) * 10)
                            .foregroundColor(.red)
                    }
                }
            }
            .padding()
            
            Text("Turnaround Times")
            HStack {
                ForEach(viewModel.turnaroundTimes.indices, id: \.self) { index in
                    VStack {
                        Text("\(viewModel.turnaroundTimes[index])")
                        Rectangle()
                            .frame(width: 20, height: CGFloat(viewModel.turnaroundTimes[index]) * 10)
                            .foregroundColor(.green)
                    }
                }
            }
            .padding()
        }
    }
}

