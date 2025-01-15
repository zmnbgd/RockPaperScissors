//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Marko Zivanovic on 6.1.25..
//

import SwiftUI

struct ContentView: View {
    
    @State private var moves = ["✊🏼", "🤚🏼", "✌🏼"]
    @State private var appMove = Int.random(in: 0...2)
    @State private var playerMove: Int?
    @State private var score = 0
    
    @State private var showAppMove = false
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black.opacity(0.4), .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            
            VStack {
                Text("Rock Paper Scissors")
                    .font(.largeTitle).bold()
                    .foregroundColor(.white)
                
                
                VStack{
                    
                    
                    VStack() {
                        Text("App move is ...?")
                            .font(.largeTitle).bold()
                            .foregroundColor(.white)
                        Text(moves[appMove])
                            .font(.largeTitle)
                        Spacer()
                    }
                    .frame(height: 180)
                    
                    
                    HStack(spacing: 50) {
                        ForEach(0..<3) { number in
                            Button {
                                //MARK: Selected move
                                //playerMove = number
                                gameMove(number)
                            } label: {
                                Text(moves[number])
                                    .font(.largeTitle)
                            }
                        }
                    }
                    .frame(height: 300)
                }
                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
            }
            .padding()
        }
    }
    
    func gameMove(_ number: Int) {
      let move = Int.random(in: 0..<3)

        if move == 0 || appMove == 0 {
            score += 0
        }
        if move == 1 || appMove == 1 {
            score += 0
        }
        if move == 2 || appMove == 2 {
            score += 0
        }
        if move == 0 || appMove == 1 {
            score += 1
        }
        if move == 0 || appMove == 2 {
            score += 1
        }
        if move == 1 || appMove == 0 {
            score -= 1
        }
        if move == 1 || appMove == 2 {
            score -= 1
        }
        if move == 2 || appMove == 0 {
            score -= 1
        }
        if move == 2 || appMove == 1 {
            score += 1
        }
    }
}

#Preview {
    ContentView()
}





