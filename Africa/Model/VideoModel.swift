//
//  VideoModel.swift
//  Africa
//
//  Created by Micah Hodge on 7/14/23.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
