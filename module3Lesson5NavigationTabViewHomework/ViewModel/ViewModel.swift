import Foundation
import Combine

class ContentViewModel: ObservableObject, ProfileHeaderProtocol {
    @Published var user: UserPhoto = UserPhoto(
        userPhoto: "getUserPhoto",
        dotUser: "dot"
    )
}
