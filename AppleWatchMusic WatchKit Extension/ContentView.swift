//
//  ContentView.swift
//  AppleWatchMusic WatchKit Extension
//
//  Created by NghiNV on 28/01/2022.
//

import SwiftUI

struct ContentView: View {
    let columns = [GridItem(.adaptive(minimum: 45), spacing: 8)]
    
    var body: some View {
        VStack {
            HomeScreen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
