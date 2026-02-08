import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    
    var body: some View {
        VStack {
            TabBarView(model: viewModel)
        }
        .padding(28)
    }
}


#Preview {
    ContentView()
}
