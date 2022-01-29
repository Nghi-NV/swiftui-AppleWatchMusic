//
//  TopArtistView.swift
//  AppleWatchMusic WatchKit Extension
//
//  Created by NghiNV on 28/01/2022.
//

import SwiftUI

struct TopArtistView: View {
    var body: some View {
        ZStack {
            Image("top_atrist")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 33)
                .cornerRadius(10)
                .opacity(0.5)
            
            HStack {
                Image("star")
                Text("Best Artist")
                    .font(.system(size: 10))
                    .fontWeight(.bold)
                    .padding(.horizontal, 4)
                
                Spacer()
                Image("play")
            }
            .padding(.horizontal)
        }
    }
}

struct TopArtistView_Previews: PreviewProvider {
    static var previews: some View {
        TopArtistView()
    }
}
