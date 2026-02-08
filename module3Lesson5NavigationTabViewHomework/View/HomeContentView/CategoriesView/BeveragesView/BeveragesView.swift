import SwiftUI

struct BeveragesView: View {
    let model: UserPhoto
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 15) {
                ForEach(Array(model.teas.keys).sorted(), id: \.self) { teaName in
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
                            Text("\(String(format: "%.1f", model.teas[teaName]!))р")
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
