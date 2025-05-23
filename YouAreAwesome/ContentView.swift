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
    @State private var imageNum = -1
    var message0 = ""
    var body: some View {
        
        
        
        VStack {
            Spacer()
            Image("image\(imageNum)")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 40)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.red)
            Spacer()
            
            Button("Show Message!") {
                
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                
               
                message = ( message == message1 ? message2 : message1)
  //              imageName = ( imageName == image1 ? image2 : image1)
                
          imageNum = (imageNum == 9 ? 0 : imageNum + 1)
 //              if imageNum == 9 { imageNum = 0
  //              } else{imageNum += 1}
                
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
