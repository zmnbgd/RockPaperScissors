//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Marko Zivanovic on 6.1.25..
//

import SwiftUI

//MARK: Custom Game Text Modifier 

struct ContentView: View {

    @State private var moves = ["Paper", "Rock", "Scissors"]
    @State private var appChpoice = Int.random(in: 0..<3)

    @State private var score = 0
    @State private var showingScore = false
    
    @State private var playerChoice: Int?  = nil

    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.purple, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack(spacing: 20) {
                Text("Rock, Paper, Scissors!")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.black)

                VStack(spacing: 10) {
                    Text("App Choice is ... \(moves[appChpoice])")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.black)
                    Image(moves[appChpoice])
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                }
                HStack(spacing: 20) {
                     ForEach(0..<3) { number in
                         Button {
                             //MARK: Player move
                         } label: {
                             Text(moves[number])
                                 .font(.system(size: 30))
                                 .fontWeight(.bold)
                                 .foregroundColor(.white)
                                 .padding()
                                 .frame(width: 100, height: 100)
                                 .background(Color.blue.opacity(0.8))
                                 .clipShape(Circle())
                         }
                        
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
}

#Preview {
    ContentView()
}
