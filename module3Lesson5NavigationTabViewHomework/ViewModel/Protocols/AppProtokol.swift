import Combine


protocol AppProtokol: ObservableObject {
    var user: CoreUserData { get }
}
