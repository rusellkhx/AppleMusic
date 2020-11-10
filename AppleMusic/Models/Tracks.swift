//
//  Tracks.swift
//  AppleMusic
//
//  Created by Rusell on 08.11.2020.
//

import Foundation

struct TrackModel {
    let trackName: String
    let artistName: String
    
    static func createTrack() -> [TrackModel] {
        let tracks = [TrackModel(trackName: "Under the Bridge", artistName: "Red Hot Chili Peppers"),
                     TrackModel(trackName: "Boom", artistName: "P.O.D.")]
        return tracks
        
    }
}

struct Track: Decodable {
    var trackName: String
    let collectionName: String?
    var artistName: String
    var artworkUrl100: String?
}

struct SearchResponse: Decodable {
    var resultCount: Int
    var results: [Track]
}
