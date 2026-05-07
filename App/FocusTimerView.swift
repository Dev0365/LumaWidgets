import SwiftUI

struct FocusTimerView: View {

    @StateObject var manager = FocusManager()
    @State private var time = 1500 // 25 min

    var body: some View {
        VStack(spacing: 30) {

            Text("Focus Timer")
                .font(.title)

            Text("\(time / 60):\(String(format: "%02d", time % 60))")
                .font(.system(size: 40, weight: .bold))

            Button("Start 25 Min Focus") {
                manager.startFocus(minutes: 25)
                startCountdown()
            }

        }
        .padding()
    }

    func startCountdown() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in

            if time > 0 {
                time -= 1
                manager.update(seconds: time)
            } else {
                timer.invalidate()
                manager.stop()
            }
        }
    }
}
