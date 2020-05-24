//
//  Playsound.swift
//  TME
//
//  Created by Eng. Norii on 5/23/20.
//  Copyright © 2020 EngSrayea. All rights reserved.
//

import Foundation
import AVFoundation

class MusicPlayerSheikh {
static let sheikh = MusicPlayerSheikh()
var audioPlayer: AVAudioPlayer?

func startBackgroundMusic() {
    if let bundle = Bundle.main.path(forResource: "\(MusicPlayerSheikh.sheikh)", ofType: "mp3") {
        let backgroundMusic = NSURL(fileURLWithPath: bundle)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
            guard let audioPlayer = audioPlayer else { return }
            audioPlayer.numberOfLoops = 0
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            //audioPlayer.stop()
        } catch {
            print(error)
        }
}
}
}



/*var audioplayer : AVAudioPlayer?
func playsound(sound: String, type : String){

    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioplayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioplayer?.play()
        }catch{
            print("doesnt work")
        }
    }
}*/

/*class Player {
//static let sound = Player()
var audioPlayer: AVAudioPlayer?

    func startBackgroundMusic(sound: String) {
    if let bundle = Bundle.main.path(forResource: sound, ofType: "mp3") {
        let backgroundMusic = NSURL(fileURLWithPath: bundle)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
            guard let audioPlayer = audioPlayer else { return }
            audioPlayer.numberOfLoops = 0
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        } catch {
            print(error)
        }
    
}
}
}*/
/*
var player : AVAudioPlayer?

func player(sound: String, type : String){
let path = Bundle.main.path(forResource: sound, ofType: type)!
let url = URL(fileURLWithPath: path)

do {
    player = try AVAudioPlayer(contentsOf: url)
    player?.play()
} catch {
    // couldn't load file :(
}


}
*/
