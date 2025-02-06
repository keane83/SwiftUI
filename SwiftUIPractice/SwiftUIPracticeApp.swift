//
//  SwiftUIPracticeApp.swift
//  SwiftUIPractice
//
//  Created by keane on 2025/1/15.
//

import SwiftUI

@main
struct SwiftUIPracticeApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
//            Lession1_CreatingAndCombiningViews()
            Lession2_ListAndNavigation()
                .environment(modelData)
        }
    }
}
