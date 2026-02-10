import SwiftUI

struct FoodCollectionView: View {
    let model: CoreUserData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 15) {
                ForEach(Array(model.foods.keys).sorted(), id: \.self) { food in
                    RoundedRectangle(cornerRadius: 22)
                        .fill(.rootColorApplication)
                        .frame(width: 319, height: 187)
                        .overlay(
                            VStack(alignment: .leading, spacing: 8) {
                                Text(food)
                                    .font(.system(size: 18, weight: .regular))
                                    .foregroundStyle(.white)
                                
                                HStack(spacing: 12) {
                                    Text("\(Int(model.foods[food]!))₽")
                                        .font(.system(size: 24, weight: .regular))
                                        .foregroundStyle(.white)
                                    
                                    HStack{
                                        Image(model.discount)
                                            .resizable()
                                            .frame(width: 38, height: 27)
                                        
                                        Spacer()
                                        
                                        Image(model.imageDiscount)
                                            .resizable()
                                            .frame(width: 21, height: 11)
                                    }
                                }
                            }
                            .padding(.top, 45)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                        )
                }
            }
            .padding(.horizontal)
        }
    }
}
