//
//  Process.swift
//  CPUSchedulingApp
//
//  Created by Kunal Sankalp😍 on 30/09/24.
//


import Foundation

struct Process: Identifiable {
    var id: UUID
    var arrivalTime: Int
    var burstTime: Int
    var priority: Int
}
