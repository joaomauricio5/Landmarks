//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by João Mauricio UWE ID 18030724 on 25/02/2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
