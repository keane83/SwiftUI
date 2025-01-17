//
//  Lession1_CircleImage.swift
//  SwiftUIPractice
//
//  Created by keane on 2025/1/15.
//

import SwiftUI

struct Lession1_CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .frame(width: 300)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 10)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    Lession1_CircleImage(image: Image("turtlerock"))
}
