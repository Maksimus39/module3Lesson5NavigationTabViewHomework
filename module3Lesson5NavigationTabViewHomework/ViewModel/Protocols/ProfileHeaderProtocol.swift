import Combine


protocol ProfileHeaderProtocol: ObservableObject {
    var user: UserPhoto { get }
}
