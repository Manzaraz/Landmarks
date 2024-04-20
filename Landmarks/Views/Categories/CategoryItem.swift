//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Christian Manzaraz on 20/04/2024.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .frame(width: 155, height: 155)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
            Text(landmark.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}
