//
//  Lession2_LandmarkList.swift
//  SwiftUIPractice
//
//  Created by keane on 2025/1/16.
//

import SwiftUI

struct Lession2_LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filterLandMarks:[Landmark] {
        modelData.landMarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filterLandMarks) { landmark in
                    NavigationLink {
                        Lession2_LandmarkDetail(landmark: landmark)
                    } label: {
                        Lessions_LandMarkRow(landmark: landmark)
                    }
                    
                }
            }
            .navigationTitle("Landmarks")
            .animation(.default, value: showFavoritesOnly)
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    Lession2_LandmarkList()
        .environment(ModelData())
}
