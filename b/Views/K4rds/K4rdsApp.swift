//
//  K4rdsApp.swift
//  b
//
//  Created by Brian Davis on 12/17/20.
//

import SwiftUI

@main
struct k4rdsApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
