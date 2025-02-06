//
//  FavoriteButton.swift
//  SwiftUIPractice
//
//  Created by LJ on 2025/2/6.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
            
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
