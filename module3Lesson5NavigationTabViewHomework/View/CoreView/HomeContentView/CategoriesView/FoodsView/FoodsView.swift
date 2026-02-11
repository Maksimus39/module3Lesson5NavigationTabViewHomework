import SwiftUI

struct Foods: Hashable {
    let name: String
    let price: Double
}

struct FoodsView: View {
    let model: CoreUserData
    
    var body: some View {
        NavigationStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(Array(model.foods.keys).sorted(), id: \.self) { foodName in
                        NavigationLink(destination: DetailFoodsView(
                            foodsName: foodName,
                            price: model.foods[foodName] ?? 0.0
                        )) {
                            VStack(alignment: .leading, spacing: 17) {
                                Image(foodName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 205, height: 126)
                                    .clipped()
                                    .cornerRadius(22)
                                
                                Text("Foods")
                                    .font(.system(size: 14, weight: .light))
                                
                                Text(foodName)
                                    .font(.system(size: 16, weight: .medium))
                                
                                HStack(spacing: 12) {
                                    Text("\(String(format: "%.1f", model.foods[foodName] ?? 0.0))р")
                                        .font(.system(size: 24, weight: .bold))
                                    
                                    Image(model.dot)
                                        .resizable()
                                        .frame(width: 5, height: 5)
                                    
                                    HStack(spacing: 1){
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
        .navigationDestination(for: Foods.self) { foods in
            DetailFoodsView(
                foodsName: foods.name,
                price: foods.price
            )
        }
    }
}


