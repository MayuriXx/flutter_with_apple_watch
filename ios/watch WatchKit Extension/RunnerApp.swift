//
//  RunnerApp.swift
//  watch WatchKit Extension
//
//  Created by Evan Martho on 03/02/2022.
//

import SwiftUI

@main
struct RunnerApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
