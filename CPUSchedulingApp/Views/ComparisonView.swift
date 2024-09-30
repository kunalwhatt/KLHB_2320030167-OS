//
//  ComparisonView.swift
//  CPUSchedulingApp
//
//  Created by Kunal Sankalp😍 on 30/09/24.
//


import SwiftUI

struct ComparisonView: View {
    @ObservedObject var viewModel: SchedulingViewModel

    var body: some View {
        VStack {
            Text("Comparison of Scheduling Algorithms")
            HStack {
                GanttChartView(viewModel: viewModel)
                BarGraphView(viewModel: viewModel)
            }
        }
        .padding()
    }
}
