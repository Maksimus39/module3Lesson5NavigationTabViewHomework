import Combine


protocol ProfileHeaderProtocol: ObservableObject {
    var user: CoreUserData { get }
}
