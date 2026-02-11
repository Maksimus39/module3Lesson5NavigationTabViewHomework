import SwiftUI

struct DetailsBeveragesView: View {
    let teaName: String
    let price: Double
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                Image(teaName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 366)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .ignoresSafeArea(edges: .horizontal)
                                
                Spacer()
            }
        }
        .ignoresSafeArea(edges: [.top, .horizontal]) 
        .navigationTitle(teaName)
        .navigationBarTitleDisplayMode(.inline)
    }
}
