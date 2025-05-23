//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by KIM YU on 5/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var image = ""
    var message0 = ""
    var body: some View {
        
        
        
        VStack {
            Spacer()
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.red)
            Spacer()
            
            Button("Press Me!") {
                
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                let image1 = "image0"
                let image2 = "image1"
               
                message = ( message == message1 ? message2 : message1)
                image = ( image == image1 ? image2 : image1)
                
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
