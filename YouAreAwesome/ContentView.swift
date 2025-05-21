//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by KIM YU on 5/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I am A Programmer!"
    
    var body: some View {
        
        
        
        VStack {
            Spacer()
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
                
            Text(message)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.purple)
            Spacer()
            HStack {
                Button("Awesome") {
                    message = "You are awesome!"
                }
            
                
                Button("Great!") {
                    message = "You are Great!"
                }
                
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
