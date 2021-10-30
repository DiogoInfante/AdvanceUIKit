//
//  Media.swift
//  Extensions
//
//  Created by Diogo Infante on 21/04/21.
//

/// Media Model
/// It is composed by a title and a type
struct Media {
    let title: String
    let type: String
    /// Initializes a media
    init (title: String, type: String) {
        self.title = title
        self.type = type
    }
}

