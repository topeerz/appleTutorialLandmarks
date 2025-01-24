//
//  ContentView.swift
//  labLandmarks
//
//  Created by topeerz on 23/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
