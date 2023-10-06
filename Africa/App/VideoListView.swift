//
//  VideoListView.swift
//  Africa
//
//  Created by Micah Hodge on 7/14/23.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    NavigationLink(
                        destination:
                            VideoPlayerView(
                                videoSelected: video.id,
                                videoTitle: video.name
                            )
                    ) {
                        VideoListItemView(video: video)
                            .padding(.vertical, 8)
                    }
                } //: ForEach
            } //: List
            .navigationTitle("Videos")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // Shuffle videos
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        } //: NavigationStack
    }
}

// MARK: - PREVIEW

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
