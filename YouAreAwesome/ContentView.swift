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
    var messages : [String] = ["Your are awesome!", "You are great!", "You are amazing!", "You are incredible!", "You are fantastic!", "You Make Me Smile", "When the Genius Bar Needs Help, They Call You!"]
    var body: some View {
        
        
        
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 40)
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.red)
                .multilineTextAlignment(.center)
            Spacer()
            
            Button("Show Message!") {
                
                
                message = messages[messageNum]
                messageNum = (messageNum == messages.count-1 ? 0 : messageNum + 1)
                
    
                imageName = "image\(imageNum)"
                imageNum = (imageNum == 9 ? 0 : imageNum + 1)
 
                
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
