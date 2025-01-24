//
//  LandmarkRow.swift
//  labLandmarks
//
//  Created by topeerz on 24/01/2025.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)

            Spacer()

            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}


#Preview {
    let landmarks = ModelData().landmarks
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

#Preview("Turtle Rock") {
    let landmarks = ModelData().landmarks
    LandmarkRow(landmark: landmarks[0])
}

#Preview(ModelData().landmarks[1].name) {
    let landmarks = ModelData().landmarks
    LandmarkRow(landmark: landmarks[1])
}
