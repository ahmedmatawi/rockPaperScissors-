//
//  ContentView.swift
//  Calculator
//
//  Created by Ahmed Matawi on 21/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var title = "This is the Title"
    //array for cpu choices
    private var choice = ["hand.thumbsup", "newspaper", "scissors"]
    

    @State var cpuScore = 0
    @State var playerScore = 0
    @State var cpuChoice = Image(systemName: "questionmark")
    
    var backgroundColor = Color.green
    var body: some View {
        
        backgroundColor.ignoresSafeArea().overlay(
        
            VStack(spacing: 20){
                Text("ROCK PAPER SCISSORS!").font(.title.bold()).padding(.top, 30.0)
                Spacer()
                Text("CPU Choice")
                    .font(.title).bold()
                Spacer()
                    
                
                cpuChoice.resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .foregroundColor(.white)
                    .background(Circle()
                        .fill(Color.red)
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10)
                        
                    )
                
                Spacer()
                HStack(spacing: 30){
                    Button(action:{
                        //generate random number to change cpu choice
                        let cpuRand = Int.random(in: 0...2)
                        //randomise cpu choice
                        cpuChoice = Image(systemName: String(choice[cpuRand]))
                        //determine who won the round and increase scores
                        //if cpu chose rock
                        if(cpuRand == 0){
                            
                        }
                        //if cpu chose paper
                        else if(cpuRand == 1){
                            cpuScore += 1
                        }
                        //if cpu chose scissors
                        else if(cpuRand == 2){
                            playerScore += 1
                        }
                       
                    }, label:{
                        Image(systemName: "hand.thumbsup")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                            .foregroundColor(.white)
                            .background(Circle()
                                .fill(Color.blue)
                                .frame(width: 100, height: 100)
                                .shadow(radius: 10)
                            )
                            .padding(25)
                        VStack(){
                            
                        }
                    }
                           
                    )
                    Button(action:{
                        //generate random number to change cpu choice
                        let cpuRand = Int.random(in: 0...2)
                        //randomise cpu choice
                        cpuChoice = Image(systemName: String(choice[cpuRand]))
                        //determine who won the round and increase scores
                        //if cpu chose rock
                        if(cpuRand == 0){
                            playerScore += 1
                        }
                        //if cpu chose paper
                        else if(cpuRand == 1){
                            
                        }
                        //if cpu chose scissors
                        else if(cpuRand == 2){
                            cpuScore += 1
                        }
                    }, label:{
                        Image(systemName: "newspaper")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                            .foregroundColor(.white)
                            .background(Circle()
                                .fill(Color.blue)
                                .frame(width: 100, height: 100)
                                .shadow(radius: 10)
                            )
                            .padding(25)
                        
                    }
                    )
                    
                    Button(action:{
                        //generate random number to change cpu choice
                        let cpuRand = Int.random(in: 0...2)
                        //randomise cpu choice
                        cpuChoice = Image(systemName: String(choice[cpuRand]))
                        //determine who won the round and increase scores
                        //if cpu chose rock
                        if(cpuRand == 0){
                            cpuScore += 1
                        }
                        //if cpu chose paper
                        else if(cpuRand == 1){
                            playerScore += 1
                        }
                        //if cpu chose scissors
                        else if(cpuRand == 2){
                            
                        }
                    }, label:{
                        Image(systemName: "scissors")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                            .foregroundColor(.white)
                            .background(Circle()
                                .fill(Color.blue)
                                .frame(width: 100, height: 100)
                                .shadow(radius: 10)
                            )
                            .padding(25)
                    }
                    )
                    
                }
                HStack(){
                    Text("ROCK").padding(30).font(.title3)
                    Text("PAPER").padding(35).font(.title3)
                    Text("SCISSORS").padding().font(.title3)
                    
                }
                HStack(){
                    Spacer()
                    VStack{
                        Text("Player").font(.title.bold()).padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.title.bold())
                    }
                    Spacer()
                    VStack{
                        Text("Computer").font(.title.bold()).padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.title.bold())
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
            }
)
        }
        
        
                
        }
    
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    
