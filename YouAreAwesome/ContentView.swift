//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by KIM YU on 5/19/25.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var soundName = ""
    @State private var lastImageNum = -1
    @State private var lastMessageNum = -1
    @State private var lastSoundNum = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    @State private var audioPlayer: AVAudioPlayer!
    
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
                var messageNum : Int
                
                repeat {
                    messageNum = Int.random(in: 0...messages.count-1)
                } while messageNum == lastMessageNum
                
                message =  messages[messageNum]
                lastMessageNum = messageNum
                
                var imageNum : Int
                repeat {
                    
                        imageNum = Int.random(in: 0...numberOfImages-1)
                    
                } while imageNum == lastImageNum
    
                imageName = "image\(imageNum)"
                lastImageNum = imageNum
                
                var soundNum : Int
                repeat{
                    soundNum = Int.random(in: 0...numberOfSounds)
                } while soundNum == lastSoundNum
                
                soundName = "sound\(soundNum)"
                lastSoundNum = soundNum
               
                guard let soundFile = NSDataAsset(name: soundName) else {
                    print("😡Could not read file named \(soundName)")
                    return
                }
                
                do {
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play()
                } catch {
                    print("😡ERROR: \(error.localizedDescription) creating audioPlayer")
                }
                
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
