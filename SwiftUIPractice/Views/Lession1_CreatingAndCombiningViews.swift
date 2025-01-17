//
//  Lession1_CreatingAndCombiningViews.swift
//  SwiftUIPractice
//
//  Created by keane on 2025/1/15.
//

import SwiftUI
import MapKit

struct Lession1_CreatingAndCombiningViews: View {
    var body: some View {
        VStack {
            Lession1_MapView(coordinate:  CLLocationCoordinate2D(latitude: 38.8625, longitude: 121.5247))
                .frame(height: 300)
            
            Lession1_CircleImage(image: Image("turtlerock"))
                .offset(y: -100)
                .padding(.bottom,-100)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
                
            }
            .padding()
            
            Spacer()
        }
            
    }
}

#Preview {
    Lession1_CreatingAndCombiningViews()
}
