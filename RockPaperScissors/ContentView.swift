//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Marko Zivanovic on 6.1.25..
//

import SwiftUI

//MARK: Custom Game Text Modifier 

struct ContentView: View {
    
    @State private var selectedGameOption = ["Rock", "Paper", "Scissors"].shuffled()
    @State private var playerOneAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var score = 0
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.purple, .blue], startPoint: .top, endPoint: .bottom)
            VStack {
                Text("Result is ...")
                VStack {
                    VStack {
                        
                    }
                    ForEach(0..<2) { number in
                        Button {
                            appGameOption(number)
                        } label: {
                            Image(selectedGameOption[number])
                        }
                    }
                }
            }
        }
        .ignoresSafeArea(.all)
    }
    
    func appGameOption(_ number: Int) {
        let option = selectedGameOption.randomElement()
    }
}

#Preview {
    ContentView()
}
