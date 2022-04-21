//
//  VideoListView.swift
//  Africa
//
//  Created by Woogi on 2022/04/20.
//

import SwiftUI

struct VideoListView: View {
  
  @State var videos: [Video] = Bundle.main.decode("videos.json")
  
  let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
  
  var body: some View {
    NavigationView {
      List {
        ForEach(videos) { item in
          NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
            VideoListItemView(video: item)
              .padding(.vertical, 8)
          }
        }
      }
      .listStyle(PlainListStyle())
      .navigationTitle("Videos")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button(action: {
            videos.shuffle()
            hapticImpact.impactOccurred()
          }) {
            Image(systemName: "arrow.2.squarepath")
          }
        }
      }
    }
  }
}

struct VideoListView_Previews: PreviewProvider {
  static var previews: some View {
    VideoListView()
  }
}
