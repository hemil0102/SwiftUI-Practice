//
//  ContentView.swift
//  List Practice
//
//  Created by harryho on 3/31/26.
//

import SwiftUI


// Identifiable을 학습해보자
struct Ocean: Identifiable {
    let name: String
    let id = UUID()
}

private var oceans = [
    Ocean(name: "Pacific"),
    Ocean(name: "Atlantic"),
    Ocean(name: "Indian"),
    Ocean(name: "Southern"),
    Ocean(name: "Arctic")
]

struct ContentView: View {
    @State private var multiSelection = Set<UUID>()
    @State private var editMode: EditMode = .active
    
    @State private var singleSelection = UUID()
    
    var body: some View {
        List {
            Text("A List Item")
            Text("A Second List Item")
            Text("A Third List Item")
        }
        
        NavigationView {
            List(oceans, selection: $multiSelection) {
                Text($0.name)
            }
            .environment(\.editMode, $editMode)
            // .navigationTitle("Oceans")
            // .toolbar { EditButton() }
        }
    }
}

#Preview {
    ContentView()
}
