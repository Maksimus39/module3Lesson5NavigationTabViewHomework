import SwiftUI

struct Tea: Hashable {
    let name: String
    let price: Double
}

struct BeveragesView: View {
    let model: CoreUserData
    
    var body: some View {
        NavigationStack{
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(Array(model.teas.keys).sorted(), id: \.self) { teaName in
                        NavigationLink(destination: DetailsBeveragesView(
                            teaName: teaName,
                            price: model.teas[teaName] ?? 0.0
                        )) {
                            VStack(alignment: .leading, spacing: 17) {
                                Image(teaName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 205, height: 126)
                                    .clipped()
                                    .cornerRadius(22)
                                
                                Text("Tea")
                                    .font(.system(size: 14, weight: .light))
                                
                                Text(teaName)
                                    .font(.system(size: 16, weight: .medium))
                                
                                HStack(spacing: 12) {
                                    Text("\(String(format: "%.1f", model.teas[teaName] ?? 0.0))р")
                                        .font(.system(size: 24, weight: .bold))
                                    
                                    Image(model.dot)
                                        .resizable()
                                        .frame(width: 5, height: 5)
                                    
                                    HStack(spacing: 1) {
                                        Image(model.rating)
                                            .resizable()
                                            .frame(width: 14, height: 14)
                                        Text(String(format: "%.1f", Double.random(in: 1...5)))
                                    }
                                }
                            }
                            .scrollTransition { content, phase in
                                content
                                    .scaleEffect(phase.isIdentity ? 1 : 0.7)
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationDestination(for: Tea.self) { teaName in
            DetailsBeveragesView(
                teaName: teaName.name,
                price: teaName.price
            )
        }
    }
}

