import Foundation
class SchedulingViewModel: ObservableObject {
    @Published var scheduledProcesses: [Process] = []
    @Published var waitingTimes: [Int] = []
    @Published var turnaroundTimes: [Int] = []
    
    func calculateTimes(processes: [Process], algorithm: SchedulingAlgorithm) {
        let scheduled = algorithm.schedule(processes: processes)
        var currentTime = 0
        var waitTimes: [Int] = []
        var tatTimes: [Int] = []
        
        for process in scheduled {
            let startTime = max(currentTime, process.arrivalTime)
            let waitTime = startTime - process.arrivalTime
            let completionTime = startTime + process.burstTime
            
            waitTimes.append(waitTime)
            tatTimes.append(completionTime - process.arrivalTime)  // Turnaround Time
            
            currentTime = completionTime
        }
        
        self.scheduledProcesses = scheduled
        self.waitingTimes = waitTimes
        self.turnaroundTimes = tatTimes
    }
}

