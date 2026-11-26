import SwiftUI

struct ContentView: View {
    @State private var versions: [GameVersion] = GameVersion.sample

    var body: some View {
        NavigationView {
            List(versions) { v in
                HStack {
                    VStack(alignment: .leading) {
                        Text(v.name).font(.headline)
                        Text(v.status).font(.subheadline).foregroundColor(.secondary)
                    }
                    Spacer()
                    Button("Launch") { }
                        .buttonStyle(.borderedProminent)
                }
            }
            .navigationTitle("LeviLauncher")
        }
    }
}

struct GameVersion: Identifiable {
    let id = UUID()
    let name: String
    let status: String

    static let sample = [
        GameVersion(name: "1.21.0", status: "Installed"),
        GameVersion(name: "1.20.80", status: "Not installed")
    ]
}
