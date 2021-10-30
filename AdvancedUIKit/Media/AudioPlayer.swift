//
//  AudioPlayer.swift
//  Extensions
//
//  Created by Diogo Infante on 21/04/21.
//
import Foundation
import AVFoundation

class AudioPlayer {
    /// Audio player
    var player = AVAudioPlayer()
    /// PlaySound
    /// - Parameters:
    ///     - sound media: Given media to be played - It can be easily accessed by the track list
    ///     - numberOfLoops: Number of times it will repeat: 0 as default. Also, -1 means infiniti loop
    func play(sound media: Media, numberOfLoops: Int = 0) {
        if let bundle = Bundle.main.path(forResource: media.title, ofType: media.type) {
            let backgroundMusic = NSURL(fileURLWithPath: bundle)
            do {
                player = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
                player.numberOfLoops = numberOfLoops
                player.prepareToPlay()
                player.play()
            } catch {
                print(error)
            }
        }
    }
}
/// Track List
struct Tracklist {
    /// Available Sounds
    static let beep = Media(title: "beep", type: "mp3")
}
