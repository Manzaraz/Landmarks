//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Christian Manzaraz on 18/04/2024.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoriteOnly = true
    
    var fiteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List(fiteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
