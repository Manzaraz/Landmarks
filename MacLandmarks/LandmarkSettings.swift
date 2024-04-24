//
//  LandmarkSettings.swift
//  MacLandmarks
//
//  Created by Christian Manzaraz on 24/04/2024.
//

import SwiftUI

struct LandmarkSettings: View {
    @AppStorage("MapView.zoom")
    private var zoom: MapView.Zoom = .medium
    
    var body: some View {
        Form {
            Picker("Map Zoom:", selection: $zoom) {
                ForEach(MapView.Zoom.allCases) { level in
                    Text(level.rawValue)
                }
            }
            .pickerStyle(.inline)
        }
        .frame(width: 300)
        .navigationTitle("Landmark Settings")
        .padding(80)
    }
}

#Preview {
    LandmarkSettings()
}
