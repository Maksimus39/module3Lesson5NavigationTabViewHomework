import SwiftUI

struct FoodsView: View {
    let model: UserPhoto
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 15) {
                ForEach(Array(model.foods.keys).sorted(), id: \.self) { foods in
                    VStack(alignment: .leading, spacing: 17) {
                        Image(foods)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 205, height: 126)
                            .clipped()
                            .cornerRadius(22)
                        
                        Text("Foods")
                            .font(.system(size: 14, weight: .light))
                        
                        Text(foods)
                            .font(.system(size: 16, weight: .medium))
                        
                        HStack(spacing: 12) {
                            Text("\(String(format: "%.1f", model.foods[foods]!))р")
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
                }
            }
            .padding(.horizontal)
        }
    }
}
