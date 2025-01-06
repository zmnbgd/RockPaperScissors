//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Marko Zivanovic on 6.1.25..
//

import SwiftUI

//MARK: Custom Game Text Modifier 

struct ContentView: View {
    
    @State private var selectedGameOption = ["🪨", "✂️", "📄"].shuffled()
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.purple, .blue], startPoint: .top, endPoint: .bottom)
            VStack {
                Text("Result is ...")
            }
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
