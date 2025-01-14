//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Marko Zivanovic on 6.1.25..
//

import SwiftUI

//MARK: Custom Game Text Modifier
struct fontModifier: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        Text(text)
            .fontDesign(.serif)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
    }
}

extension View {
    func appTextModifier(text: String) -> some View {
        modifier(fontModifier(text: text))
    }
}

struct ContentView: View {
    
    @State private var moves = ["✊🏼", "🤚🏼", "✌🏼"]
    @State private var appMove = Int.random(in: 0...2)
    @State private var playerMove: Int?
    @State private var score = 0
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black.opacity(0.4), .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            
            VStack {
                Text("Rock Paper Scissors")
                    .font(.largeTitle).bold()
                    .foregroundColor(.white)
                
                
                VStack {
                    
                    
                    VStack() {
                        Text("App move is ...?")
                            .font(.largeTitle).bold()
                            .foregroundColor(.white)
                        Text(moves[appMove])
                            .font(.largeTitle)
                        Spacer()
                    }
                    .frame(height: 300)
                    
                    
                    HStack(spacing: 50) {
                        ForEach(0..<3) { number in
                            Button {
                                //MARK: Selected move
                                playerMove = number
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
}

#Preview {
    ContentView()
}





