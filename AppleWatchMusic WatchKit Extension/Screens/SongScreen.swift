//
//  SongScreen.swift
//  AppleWatchMusic WatchKit Extension
//
//  Created by NghiNV on 29/01/2022.
//

import SwiftUI

struct SongScreen: View {
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    Image("artist_9")
                        .resizable()
                        .frame(width: .infinity, height: 100)
                        .aspectRatio(1.76, contentMode: .fill)
                    
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)), Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)), Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                    
                    VStack {
                        Spacer()
                        Text("Name".uppercased())
                            .font(.system(size: 10))
                            .bold()
                        Text("Popular".uppercased())
                            .font(.system(size: 7))
                            .bold()
                    }
                    .padding(.bottom)
                }
                .cornerRadius(10)
                
                ForEach(0 ..< songs.count) { i in
                    SongCardView(song: songs[i], serialNum: i + 1)
                }
                .padding(.top, 4)
            }
        }
    }
}

struct SongScreen_Previews: PreviewProvider {
    static var previews: some View {
        SongScreen()
    }
}

struct SongCardView: View {
    var song: Song
    var serialNum: Int
    
    var body: some View {
        HStack {
            Text("\(serialNum)")
                .fontWeight(.medium)
            Text(song.name)
                .fontWeight(.medium)
            Spacer()
            Text("\(song.duration) min")
                .fontWeight(.medium)
        }
        .font(.system(size: 8))
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.gray.opacity(0.4))
        .cornerRadius(8)
    }
}
