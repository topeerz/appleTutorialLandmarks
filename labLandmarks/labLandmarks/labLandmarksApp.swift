//
//  labLandmarksApp.swift
//  labLandmarks
//
//  Created by topeerz on 23/01/2025.
//

import SwiftUI

@main
struct labLandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
