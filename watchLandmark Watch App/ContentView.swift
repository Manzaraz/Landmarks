//
//  ContentView.swift
//  watchLandmark Watch App
//
//  Created by Christian Manzaraz on 22/04/2024.
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
