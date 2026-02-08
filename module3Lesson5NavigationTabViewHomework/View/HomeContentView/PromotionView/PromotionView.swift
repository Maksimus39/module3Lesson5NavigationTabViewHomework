import SwiftUI

struct PromotionView: View {
    let dotPromotion: UserPhoto
    
    var body: some View {
        
        HStack {
            HStack(spacing: 4) {
                Image(dotPromotion.dotPromotion)
                    .resizable()
                    .frame(width: 27, height: 27)
                
                
                Text("Promotion")
                    .font(.system(size: 18, weight: .heavy))
                    .foregroundStyle(.rootColorApplication)
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
