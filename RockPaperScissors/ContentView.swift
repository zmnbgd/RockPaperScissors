//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Marko Zivanovic on 6.1.25..
//

import SwiftUI

//MARK: Custom Game Text Modifier 

struct ContentView: View {
    
    @State private var moves = ["rock", "paper", "scissors"]
    @State private var appChpoice = Int.random(in: 0..<3)

    @State private var score = 0
    @State private var showingScore = false
    
    @State private var playerChoice: Int?  = nil

    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.purple, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                VStack {
                    VStack(spacing: 10) {
                        Text("App Choice is ... \(moves[appChpoice])")
                            .font(.title3)
                            .foregroundColor(.black)
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
                                Image(moves[number])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .padding()
                                    .frame(width: 100, height: 100)
                                    .background(Color.black)
                                    .clipShape(Circle())
                                
                                
                            }
                            
                        }
                    }
                }
            }
            .navigationTitle("Rock Paper Scissors")
            .edgesIgnoringSafeArea(.all)
        }

    }
    
}

#Preview {
    ContentView()
}
