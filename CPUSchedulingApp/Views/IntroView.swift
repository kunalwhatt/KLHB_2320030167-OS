import SwiftUI

struct IntroView: View {
    @State private var navigateToMain = false
    @State private var navigateToDefinitions = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome to CPU Scheduling Simulator")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Button("Start Simulation") {
                navigateToMain = true
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .padding()

            Button("View Algorithm Definitions") {
                navigateToDefinitions = true
            }
            .buttonStyle(.bordered)
            .font(.title2)
            .padding()

            NavigationLink(destination: ContentView(), isActive: $navigateToMain) { EmptyView() }
            NavigationLink(destination: AlgorithmDefinitionsView(), isActive: $navigateToDefinitions) { EmptyView() }
        }
        .padding()
    }
}

