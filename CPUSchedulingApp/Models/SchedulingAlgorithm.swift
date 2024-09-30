//
//  SchedulingAlgorithm.swift
//  CPUSchedulingApp
//
//  Created by Kunal Sankalp😍 on 30/09/24.
//


protocol SchedulingAlgorithm {
    func schedule(processes: [Process]) -> [Process]
}

struct SJFAlgorithm: SchedulingAlgorithm {
    func schedule(processes: [Process]) -> [Process] {
        // Implement Shortest Job First Scheduling
        return processes.sorted { $0.burstTime < $1.burstTime }
    }
}

struct PriorityAlgorithm: SchedulingAlgorithm {
    func schedule(processes: [Process]) -> [Process] {
        // Implement Priority Scheduling
        return processes.sorted { $0.priority < $1.priority }
    }
}
