//
//  ContentView.swift
//  SwiftUI-List-Starter
//
//  Created by Sean Allen on 4/23/21.
//

import SwiftUI

struct VideoListView: View {
    var videosYou: [Video] = VideoList.topTen
    
    
    
    var body: some View {
        NavigationView{
            List(videosYou, id: \.id) { video in
                NavigationLink(destination: VideoDetailView(video:video), label:{
                    HStack{
                        
                        Image(video.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                            .cornerRadius(4)
                            .padding(.vertical, 4)
                        
                        VStack(alignment: .leading, spacing: 5){
                            Text(video.title)
                                .fontWeight(.semibold)
                                .lineLimit(2)
                                .minimumScaleFactor(0.5)
                            
                            Text(video.uploadDate)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        
                    }})
                
                
            }
            .navigationTitle("Youtuber's top Ten")
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VideoListView()
            
        }
    }
}
