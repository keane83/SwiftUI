//
//  Lession2_LandmarkDetail.swift
//  SwiftUIPractice
//
//  Created by keane on 2025/1/16.
//

import SwiftUI
import MapKit

struct Lession2_LandmarkDetail: View {
    var landmark : Landmark
    var body: some View {
        ScrollView {
            Lession1_MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            Lession1_CircleImage(image: landmark.image)
                .offset(y: -100)
                .padding(.bottom,-100)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
            
    }
}

#Preview {
    Lession2_LandmarkDetail(landmark: landMarks[0])
}
