//
//  Lessions_LandMarkRow.swift
//  SwiftUIPractice
//
//  Created by keane on 2025/1/16.
//

import SwiftUI

struct Lessions_LandMarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}


#Preview {
    let landMarks = ModelData().landMarks
    Group {
        Lessions_LandMarkRow(landmark: landMarks[0])
        Lessions_LandMarkRow(landmark: landMarks[1])
    }
}

#Preview("\(ModelData().landMarks[0].name)") {
    Lessions_LandMarkRow(landmark: ModelData().landMarks[0])
}

#Preview("\(ModelData().landMarks[1].name)") {
    Lessions_LandMarkRow(landmark: ModelData().landMarks[1])
}

