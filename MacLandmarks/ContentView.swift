//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Christian Manzaraz on 23/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LandmarkList()
                .frame(width: 700, height: 300)
        }
        
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
