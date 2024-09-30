//
//  AlgorithmDefinitionsView.swift
//  CPUSchedulingApp
//
//  Created by Kunal Sankalp😍 on 30/09/24.
//


import SwiftUI

struct AlgorithmDefinitionsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("CPU Scheduling Algorithms")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                // Shortest Job First (SJF)
                VStack(alignment: .leading, spacing: 10) {
                    Text("1. Shortest Job First (SJF)").font(.headline)
                    Text("SJF selects the process that has the smallest burst time. It minimizes the average waiting time, but it is non-preemptive and might cause the starvation of long processes.")
                }

                // Priority Scheduling
                VStack(alignment: .leading, spacing: 10) {
                    Text("2. Priority Scheduling").font(.headline)
                    Text("In Priority Scheduling, each process is assigned a priority. The process with the highest priority is selected first. It can be either preemptive or non-preemptive.")
                }

                // Round Robin (RR)
                VStack(alignment: .leading, spacing: 10) {
                    Text("3. Round Robin (RR)").font(.headline)
                    Text("Round Robin scheduling gives each process a fixed time quantum in a cyclic order. It's fair and prevents starvation but can result in high turnaround times.")
                }

                // Add any other algorithm descriptions here as needed

                Spacer()
            }
            .padding()
        }
        .navigationTitle("Algorithm Definitions")
    }
}
