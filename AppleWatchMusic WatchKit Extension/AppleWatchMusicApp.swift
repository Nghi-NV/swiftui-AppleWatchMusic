//
//  AppleWatchMusicApp.swift
//  AppleWatchMusic WatchKit Extension
//
//  Created by NghiNV on 28/01/2022.
//

import SwiftUI

@main
struct AppleWatchMusicApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
