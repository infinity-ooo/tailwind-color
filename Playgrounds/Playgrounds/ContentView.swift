//
//  ContentView.swift
//  Playgrounds
//
//  Created by Mia Yv on 2023-09-25.
//

import SwiftUI
import TailwindColor

struct ContentView: View {
    @State var colors: [Color] = TailwindColor.blue

    var body: some View {
        ZStack {
            Grid {
                ForEach(0..<8, id: \.self) { _ in
                    GridRow {
                        ForEach(10..<30, id: \.self) { _ in
                            RoundedRectangle(cornerRadius: 12, style: .continuous)
                                .frame(width: 32, height: 32)
                                .foregroundStyle(colors.randomElement()!)
                                .animation(.spring(), value: colors)
                        }
                    }
                }
            }
            VStack(spacing: 8) {
                Text("Tailwind Color")
                    .font(.system(size: 48, weight: .bold, design: .rounded))
                Text("Tailwind Colors for SwiftUI")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
            }
            .padding(.vertical, 37)
            .padding(.horizontal, 41)
            .background(.ultraThinMaterial)
            .cornerRadius(12, antialiased: true)
        }
    }
}

#Preview {
    ContentView()
        .padding()
        .background(.white)
}

