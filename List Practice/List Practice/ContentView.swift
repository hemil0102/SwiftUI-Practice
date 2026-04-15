//
//  ContentView.swift
//  List Practice
//
//  Created by harryho on 3/31/26.
//

import SwiftUI
import Combine

struct StatsSummary: View {
    let stats: [String: String]

    var body: some View {
        HStack(spacing: 8) {
            ForEach(Array(stats.prefix(3)), id: \.key) { key, value in
                HStack(spacing: 4) {
                    Text(key + ":")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    Text(value)
                        .font(.caption)
                        .foregroundStyle(.primary)
                }
                .padding(.horizontal, 6)
                .padding(.vertical, 4)
                .background(.thinMaterial, in: Capsule())
            }
        }
    }
}

struct ContentView: View {
    @State private var multiSelection = Set<UUID>()
    @State private var editMode: EditMode = .active
    @State private var singleSelection = UUID()
    
    // Identifiable을 학습해보자
    struct Ocean: Identifiable, Hashable {
        let name: String
        let id = UUID()
        let stats: [String: String]
    }

    // ObserbableObject는 Combine 프레임워크가 필요하다
    class OceanStore: ObservableObject {
        @Published var oceans = [Ocean]()
        func loadStats() async {}
    }

    @EnvironmentObject var store: OceanStore
    
    var body: some View {
        NavigationView {
            List(store.oceans) { ocean in
                HStack {
                    Text(ocean.name)
                    StatsSummary(stats: ocean.stats)
                }
            }
            .refreshable {
                await store.loadStats()
            }
            .navigationTitle("Oceans")
        }
//        List {
//            Text("A List Item")
//            Text("A Second List Item")
//            Text("A Third List Item")
//        }
//        
//        NavigationView {
//            List(oceans, selection: $multiSelection) {
//                Text($0.name)
//            }
//            .environment(\.editMode, $editMode)
//            // .navigationTitle("Oceans")
//            // .toolbar { EditButton() }
//        }
    }
}

#Preview {
    let store = ContentView.OceanStore()
    store.oceans = [
        ContentView.Ocean(name: "Pacific", stats: ["Area": "165M km²", "Depth": "4,280 m"]),
        ContentView.Ocean(name: "Atlantic", stats: ["Area": "106M km²", "Depth": "3,646 m"])
    ]
    
    return ContentView().environmentObject(store)
}
