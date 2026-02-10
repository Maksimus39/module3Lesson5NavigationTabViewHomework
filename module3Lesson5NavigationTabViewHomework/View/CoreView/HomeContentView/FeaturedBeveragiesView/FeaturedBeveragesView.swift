import SwiftUI

struct FeaturedBeveragesView: View {
    let dotPromotion: CoreUserData
    
    var body: some View {
        HStack {
            HStack {
                Text("Featured Beverages")
                    .font(.system(size: 18, weight: .heavy))
                    .foregroundStyle(.black)
            }
            
            Spacer()
            
            HStack {
                Text("More")
                    .font(.system(size: 16, weight: .regular))
                    .foregroundStyle(.rootColorApplication)
            }
        }
        .padding()
    }
}
