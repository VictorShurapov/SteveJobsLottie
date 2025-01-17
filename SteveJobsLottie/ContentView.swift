//
//  ContentView.swift
//  SteveJobsLottie
//
//  Created by Yaro4ka on 16.01.2025.
//

import SwiftUI
import Lottie

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var useDarkMode = false
    
    var body: some View {
        VStack {
            Text("Steve Jobs Lottie")
                .font(.title)
            Button(action: {
                useDarkMode.toggle()
            }) {
                Image(systemName: useDarkMode ? "sun.max.fill" : "moon.fill")
                    .font(.title)
                    .foregroundColor(useDarkMode ? .yellow : .blue)
            }
            .padding(5)
            .background(Circle().fill(useDarkMode ? Color.gray : Color.white).shadow(radius: 5))
            
            LottieView(animation: .named(colorScheme.steveJobsAnimationName))
                .playing(loopMode: .loop)
            Text("Attention is the ultimate asset.")
                .font(.title)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .padding(.bottom, 5)
        }
        .padding()
        .preferredColorScheme(useDarkMode ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
