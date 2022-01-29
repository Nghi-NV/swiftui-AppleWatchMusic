//
//  ArtistCardView.swift
//  AppleWatchMusic WatchKit Extension
//
//  Created by NghiNV on 29/01/2022.
//

import SwiftUI

struct ArtistCardView: View {
    var artist: Artist
    
    var body: some View {
        VStack {
            Image(artist.image)
                .resizable()
                .frame(maxWidth: .infinity)
                .aspectRatio(contentMode: .fill)
            
            Text(artist.name)
                .font(.system(size: 7))
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .lineLimit(1)
                .padding(.top, 2)
        }
    }
}

struct ArtistCardView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistCardView(artist: artists[0])
    }
}
