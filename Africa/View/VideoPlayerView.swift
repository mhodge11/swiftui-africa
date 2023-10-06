//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Micah Hodge on 7/14/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    
    var videoSelected: String
    var videoTitle: String
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            VideoPlayer(
                player: playVideo(fileName: videoSelected, fileFormat: "mp4")
            ) {
//                Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8),
                alignment: .topLeading
            )
        } //: VStack
        .tint(.accentColor)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - PREVIEW

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
