//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by KIM YU on 5/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNum = 0
    @State private var messageNum = 0
    var messages : [String] = ["Your are awesome!", "When the Genius Bar Needs Help, They Call You!","You are great!", "You are amazing!", "You are incredible!", "You are fantastic!", "You Make Me Smile", ]
    var body: some View {
        
        
        
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.red)
                .multilineTextAlignment(.center)
                .frame(height: 130)
                .animation(.easeInOut(duration: 0.15), value : message)
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 40)
                .animation(.linear,value: imageName)
            Spacer()
            
            Button("Show Message!") {
                message =  messages[Int.random(in: 0...messages.count-1)]
                
   //             message = messages[messageNum]
    //            messageNum = (messageNum == messages.count-1 ? 0 : messageNum + 1)
                
                
    
                imageName = "image\(Int.random(in: 0...9))"
     //           imageNum = (imageNum == 9 ? 0 : imageNum + 1)
 
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title)
            .fontWeight(.ultraLight)
            .cornerRadius(15)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
