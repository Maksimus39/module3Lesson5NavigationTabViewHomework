import SwiftUI

struct ProfileHeaderView: View {
    let user: UserPhoto
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 6) {
                Text("Good Morning")
                    .font(.system(size: 16, weight: .regular))
                
                Text("Kevin Hard")
                    .font(.system(size: 28, weight: .bold))
            }
            
            Spacer()
            
            ZStack(alignment: .topTrailing) {
                Image(user.userPhoto)
                    .resizable()
                    .frame(width: 48, height: 48)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                Image(user.dotUser)
                    .resizable()
                    .frame(width: 15, height: 15)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .offset(x: 5, y: -5)
            }
        }
        .padding()
    }
}
