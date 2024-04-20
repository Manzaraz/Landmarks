//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Christian Manzaraz on 20/04/2024.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        
        NavigationSplitView {
            Text("Hello, World!")
                .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }

    }
}

#Preview {
    CategoryHome()
}
