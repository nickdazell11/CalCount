//
//  CalCountApp.swift
//  CalCount
//
//  Created by Nick Dazell on 11/6/22.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var hasOnboarded: Bool
    
    init(hasOnboarded: Bool) {
        self.hasOnboarded = hasOnboarded
    }
}

@main
struct CalCountApp: App {
    @ObservedObject var appState = AppState(hasOnboarded: false)
    var body: some Scene {
        WindowGroup {
            if appState.hasOnboarded {
                ContentView()
                    .environmentObject(appState)
            } else {
                Onboarding()
                    .environmentObject(appState)
            }
            
        }
    }
}
