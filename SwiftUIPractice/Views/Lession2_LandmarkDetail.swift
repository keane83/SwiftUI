//
//  Lession2_LandmarkDetail.swift
//  SwiftUIPractice
//
//  Created by keane on 2025/1/16.
//

import SwiftUI
import MapKit

struct Lession2_LandmarkDetail: View {
    @Environment(ModelData.self) private var modelData
    
    var landmark : Landmark
    
    var landmarkIndex : Int {
        modelData.landMarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        
        @Bindable var modelData = modelData
        //FavoriteButton需要一个可双向绑定的变量
        //但是Environment修饰的不可以双向绑定
        //所以在body里定义一个Bindable
        
        ScrollView {
            Lession1_MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            Lession1_CircleImage(image: landmark.image)
                .offset(y: -100)
                .padding(.bottom,-100)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                    FavoriteButton(isSet: $modelData.landMarks[landmarkIndex].isFavorite)
                    
                }
                
                
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
    Lession2_LandmarkDetail(landmark: ModelData().landMarks[0])
        .environment(ModelData())
}
