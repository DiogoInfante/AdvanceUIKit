//
//  VideoPlayer.swift
//  UIViewExtensions
//
//  Created by Diogo Infante on 21/04/21.
//
import AVKit
import Foundation

class VideoPlayer {
    /// Video Player
    var player = AVPlayer()
    /// PlaySound
    /// - Parameters:
    ///     - video media: Given media to be played - It can be easily accessed by the video List
    static func play(video media: Media)-> AVPlayer {
        if Bundle.main.path(forResource: media.title, ofType: media.type) != nil {
            guard let path = Bundle.main.path(forResource: media.title, ofType: media.type) else {
                debugPrint("video not found")
                return AVPlayer()
            }
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            return player
        }
        return AVPlayer()
    }
}
/// Video List
struct VideoList {
    /// Available Videos
    static let myVideo = Media(title: "myVideo", type: "mp4")
}
