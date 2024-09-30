//
//  GanttChartView.swift
//  CPUSchedulingApp
//
//  Created by Kunal Sankalp😍 on 30/09/24.
//


import SwiftUI

struct GanttChartView: View {
    @ObservedObject var viewModel: SchedulingViewModel

    var body: some View {
        HStack {
            ForEach(viewModel.scheduledProcesses) { process in
                Text("P\(process.id)").frame(width: CGFloat(process.burstTime * 10), height: 30)
                    .background(Color.blue)
            }
        }
        .padding()
    }
}
