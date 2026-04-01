//
//  ContentView.swift
//  List Practice
//
//  Created by harryho on 3/31/26.
//

import SwiftUI

struct ContentView: View {
    private let items = ["사과", "바나나", "체리", "포도", "오렌지"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(items, id: \.self) { item in
                    HStack {
                        Image(systemName: "checkmark.circle")
                            .foregroundStyle(.tint)
                        Text(item)
                    }
                }
            }
            .navigationTitle("과일 리스트")
        }
    }
}

#Preview {
    ContentView()
}
