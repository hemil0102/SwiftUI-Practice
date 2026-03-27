//
//  ContentView.swift
//  Font Practice
//
//  Created by harryho on 3/13/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Getting standard fonts
        // Text Styles
//        VStack(alignment: .leading) {
//            Text("largeTitle")
//                .font(.largeTitle)
//            Text("title")
//                .font(.title)
//            Text("title2")
//                .font(.title2)
//            Text("title3")
//                .font(.title3)
//            Text("headline")
//                .font(.headline)
//            Text("subheadline")
//                .font(.subheadline)
//            Text("body")
//                .font(.body)
//            Text("callout")
//                .font(.callout)
//            Text("caption")
//                .font(.caption)
//            Text("caption2")
//                .font(.caption2)
//            Text("footnote")
//                .font(.footnote)
//        }
//        .frame(maxWidth: .infinity, alignment: .leading)
//        .padding()
        
        // Getting system fonts
        VStack(alignment: .leading) {
            Text("System Fonts: headline, Serif, Bold")
                .font(.system(.headline, design: .serif, weight: .bold))
            
            Text("System Fonts: size 16, heavy, rounded")
                .font(.system(size: 16, weight: .heavy, design: .rounded))
            
            Text("System Fonts: size 12, heavy, monospaced")
                .font(.system(size: 12, weight: .heavy, design: .monospaced))
            
            Text("System Fonts: size 14, light, monospaced")
                .font(.system(size: 14, weight: .light, design: .monospaced))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        
        // Styling fonts
        VStack(alignment: .leading) {
            Text("italic fonts")
                .italic()
            Text("bold fonts")
                .bold()
            Text("monospaced fonts")
                .monospaced()
            Text("monospacedDigit fonts")
                .monospacedDigit()
            
            // 모든 글자를 작은 대문자로 변환시킨다.
            Text("smallCaps fonts")
                .font(.body.smallCaps())
            
            // 소문자를 작은 대문자로 변환시킨다.
            Text("lowercaseSmallCaps fonts")
                .font(.body.lowercaseSmallCaps())
            
            // 대문자만 작은 대문자로 변환시킨다.
            Text("uppercaseSmallCaps fonts")
                .font(.body.uppercaseSmallCaps())
            
            Text("System Fonts: size 14, light, monospaced, italic")
                .font(.system(size: 14, weight: .light, design: .monospaced))
                .italic()
            
            // weight를 통해 폰트에 bold 효과 적용
            Text("weight .body .bold fonts")
                .font(.body.weight(.bold))
            
            // width 적용
            // static let compressed: Font.Width
            // static let condensed: Font.Width
            // static let expanded: Font.Width
            // static let standard: Font.Width
            Text("width .body .compressed fonts")
                .font(.body.width(.compressed))
            Text("width .body .condensed fonts")
                .font(.body.width(.condensed))
            Text("width .body .expanded fonts")
                .font(.body.width(.expanded))
            Text("width .body .standard fonts")
                .font(.body.width(.standard))
            Text("width .body .width.0.2 fonts")
                .font(.body.width(.init(0.2)))
            Text("standard\nstandard\nstandard")
                .font(.body.leading(.standard))
            Text("loose\nloose\nloose")
                .font(.body.leading(.loose))
            Text("tight\ntight\ntight")
                .font(.body.leading(.tight))
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    ContentView()
}
