//
//  LandmarkList.swift
//  labLandmarks
//
//  Created by topeerz on 24/01/2025.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false

    var filteredLandmarks: [Landmark] {
        showFavoritesOnly ? modelData.landmarks.filter(\.isFavorite) : modelData.landmarks
    }

    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")

        } detail: {
            Text("Select a Landmark")
        }
    }
}


#Preview {
    LandmarkList()
        .environment(ModelData())
}
