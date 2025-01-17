//
//  Lession1_MapView.swift
//  SwiftUIPractice
//
//  Created by keane on 2025/1/15.
//

import SwiftUI
import MapKit

struct Lession1_MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {

        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        )

    }
}

#Preview {
    Lession1_MapView(coordinate:  CLLocationCoordinate2D(latitude: 38.8625, longitude: 121.5247))
}
