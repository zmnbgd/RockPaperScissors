//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Marko Zivanovic on 6.1.25..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LinearGradient(colors: [.purple, .blue], startPoint: .top, endPoint: .bottom)
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
