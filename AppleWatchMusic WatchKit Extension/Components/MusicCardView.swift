//
//  MusicCardView.swift
//  AppleWatchMusic WatchKit Extension
//
//  Created by NghiNV on 28/01/2022.
//

import SwiftUI

struct MusicCardView: View {
    var music: Music
    
    var body: some View {
        ZStack {
            Image(music.poster)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(10)
                .opacity(0.75)
            
            Text(music.artistName)
                .font(.system(size: 7))
                .bold()
        }
    }
}

struct MusicCardView_Previews: PreviewProvider {
    static var previews: some View {
        MusicCardView(music: musics[0])
    }
}
