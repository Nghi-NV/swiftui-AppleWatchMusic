//
//  ArtistScreen.swift
//  AppleWatchMusic WatchKit Extension
//
//  Created by NghiNV on 29/01/2022.
//

import SwiftUI

struct ArtistScreen: View {
    var columns = [GridItem(.adaptive(minimum: 45), spacing: 8)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 8) {
                    ForEach(artists, id: \.self) { artist in
                        ArtistCardView(artist: artist)
                    }
                }
            }
        }
        .navigationTitle("Artist")
    }
}

struct ArtistScreen_Previews: PreviewProvider {
    static var previews: some View {
        ArtistScreen()
    }
}
