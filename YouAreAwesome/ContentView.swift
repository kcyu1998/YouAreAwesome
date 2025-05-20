//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by KIM YU on 5/19/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.red)
            Text("You Are Awesome!")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
