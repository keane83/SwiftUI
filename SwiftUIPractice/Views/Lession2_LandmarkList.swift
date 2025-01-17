//
//  Lession2_LandmarkList.swift
//  SwiftUIPractice
//
//  Created by keane on 2025/1/16.
//

import SwiftUI

struct Lession2_LandmarkList: View {
    var body: some View {
        
        NavigationSplitView {
            List(landMarks) { landmark in
                NavigationLink {
                    Lession2_LandmarkDetail(landmark: landmark)
                } label: {
                    Lessions_LandMarkRow(landmark: landmark)
                }
                
            }.navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    Lession2_LandmarkList()
}
