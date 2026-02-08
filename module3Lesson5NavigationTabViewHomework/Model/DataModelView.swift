import Foundation

// Model data
struct UserPhoto: Identifiable {
    var id: String = UUID().uuidString
    var userPhoto: String
    var dotUser: String
}
