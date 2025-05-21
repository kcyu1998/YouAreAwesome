//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by KIM YU on 5/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var shape = ""
    var body: some View {
        
        
        
        VStack {
            Spacer()
            Image(systemName: shape)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.purple)
            Spacer()
            
            Button("Press Me!") {
                if message == "You are awesome!" {
                    message = "You are great!"
                    shape = "hand.thumbsup"
                }
                else{
                    message = "You are awesome!"
                    shape = "sun.max.fill"}
            }
            .buttonStyle(.borderedProminent)
            .font(.largeTitle)
            .fontWeight(.ultraLight)
            .tint(.orange)
            .cornerRadius(15)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
