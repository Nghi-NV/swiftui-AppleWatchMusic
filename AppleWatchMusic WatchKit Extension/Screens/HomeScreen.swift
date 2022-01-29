//
//  HomeScreen.swift
//  AppleWatchMusic WatchKit Extension
//
//  Created by NghiNV on 28/01/2022.
//

import SwiftUI

struct HomeScreen: View {
    let columns = [GridItem(.adaptive(minimum: 45), spacing: 8)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ZStack {
                        TopArtistView()
                        NavigationLink {
                            ArtistScreen()
                        } label: {
                            
                        }.opacity(0.05)
                    }
                    
                    LazyVGrid(columns: columns, spacing: 8) {
                        ForEach(musics, id: \.self) { music in
                            ZStack {
                                MusicCardView(music: music)
                                NavigationLink {
                                    SongScreen()
                                } label: {
                                }
                                .opacity(0.05)
                            }
                        }
                    }
                    .padding(.vertical)
                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
