//
//  ContentView.swift
//  Font Practice
//
//  Created by harryho on 3/13/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(".font(.largeTitle)")
                .foregroundStyle(.gray)
            Text("Hello, world!")
                .font(.largeTitle)
            
            Text(".font(.title)")
                .foregroundStyle(.gray)
            Text("Hello, world!")
                .font(.title)
            
            Text(".font(.title2)")
                .foregroundStyle(.gray)
            Text("Hello, world!")
                .font(.title2)
            
            Text(".font(.title3)")
                .foregroundStyle(.gray)
            Text("Hello, world!")
                .font(.title3)
            
            Text(".font(.headline)")
                .foregroundStyle(.gray)
            Text("Hello, world!")
                .font(.headline)
            
            Text(".font(.subheadline)")
                .foregroundStyle(.gray)
            Text("Hello, world!")
                .font(.subheadline)
            
            Text(".font(.body)")
                .foregroundStyle(.gray)
            Text("Hello, world!")
                .font(.body)
            
            Text(".font(.callout)")
                .foregroundStyle(.gray)
            Text("Hello, world!")
                .font(.callout)
            
            Text(".font(.caption)")
                .foregroundStyle(.gray)
            Text("Hello, world!")
                .font(.caption)
            
            Text(".font(.caption2)")
                .foregroundStyle(.gray)
            Text("Hello, world!")
                .font(.caption2)
            
            Text(".font(.footnote)")
                .foregroundStyle(.gray)
            Text("Hello, world!")
                .font(.footnote)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    ContentView()
}
