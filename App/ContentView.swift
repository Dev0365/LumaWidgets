import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25) {

            Text("LumaWidgets")
                .font(.largeTitle)
                .bold()

            Text("Calm Productivity MVP")
                .foregroundColor(.gray)

            Spacer()

            Text("🧘 Focus • 💧 Hydration • 🌿 Breathing")
                .font(.footnote)
                .foregroundColor(.secondary)

        }
        .padding()
    }
}
