import ActivityKit

struct FocusAttributes: ActivityAttributes {

    public struct ContentState: Codable, Hashable {
        var remainingSeconds: Int
    }

    var sessionName: String
}
