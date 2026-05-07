import ActivityKit

class FocusManager {

    var activity: Activity<FocusAttributes>? = nil

    func startFocus(minutes: Int) {

        let attributes = FocusAttributes(sessionName: "Deep Focus")

        let state = FocusAttributes.ContentState(
            remainingSeconds: minutes * 60
        )

        do {
            activity = try Activity.request(
                attributes: attributes,
                contentState: state,
                pushType: nil
            )
        } catch {
            print("Failed to start Live Activity: \(error)")
        }
    }

    func update(seconds: Int) {
        Task {
            await activity?.update(
                using: FocusAttributes.ContentState(remainingSeconds: seconds)
            )
        }
    }

    func stop() {
        Task {
            await activity?.end(dismissalPolicy: .immediate)
        }
    }
}
