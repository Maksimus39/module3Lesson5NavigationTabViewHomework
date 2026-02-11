import SwiftUI


struct DetailFoodsView: View {
    let foodsName: String
    let price: Double
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                Image(foodsName)
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
        .navigationTitle(foodsName)
        .navigationBarTitleDisplayMode(.inline)
    }
}
