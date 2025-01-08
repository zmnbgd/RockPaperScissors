//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Marko Zivanovic on 6.1.25..
//

import SwiftUI

//MARK: Custom Game Text Modifier 

struct ContentView: View {

    @State private var gameOptions = ["Paper", "Rock", "Scissors"]
    @State private var appChpoice = Int.random(in: 0...2)

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
                VStack {
                    Text("App Choice is ... \(gameOptions[appChpoice])")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.black)
                    Image(gameOptions[appChpoice])
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .background(Color.clear)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
}

#Preview {
    ContentView()
}
