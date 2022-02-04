//
//  ContentView.swift
//  My_Ios_app
//
//  Created by Md. Masum  on 26/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
    /*    Text("Hello, Keyalin!").padding(.all).background(Color.cyan.blur(radius: 2.0))
    }*/
        ZStack{
            Image("background")
        VStack{
            Spacer()
            Image("logo")
                /*.resizable()
                .aspectRatio(contentMode: .fit)*/
            Spacer()
            HStack{
                Spacer()
                Image(playerCard)
                Spacer()
                Image(cpuCard)
                Spacer()
            }
            Spacer()
            
            Button(action: {
                //Generate a random number between 2 & 14
                let playerRand = Int.random(in: 2...14)
                let cpuRand = Int.random(in: 2...14)
                //update the cards
                playerCard = "card" + String(playerRand)
                cpuCard = "card" + String(cpuRand)
                
                //update the scores
                //playerScore += 1
                //cpuScore += 1
                if (playerRand > cpuRand){
                    playerScore += 1
                }
                else if (cpuRand > playerRand){
                    cpuScore += 1
                }
                
            }, label: {
                Image("dealbutton")
            })
            
            
            
            Spacer()
            HStack{
                Spacer()
                VStack{
                    Text("Player")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                    Text(String(playerScore))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                }
                Spacer()
                VStack{
                    Text("CPU")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                    Text(String(cpuScore))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        
                }
                Spacer()
            }
            Spacer()
        }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
