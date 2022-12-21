//
//  CalCountApp.swift
//  CalCount
//
//  Created by Nick Dazell on 11/6/22.
//

import SwiftUI

/*
class AppState: ObservableObject {
    @Published var hasOnboarded: Bool
    
    init(hasOnboarded: Bool) {
        self.hasOnboarded = hasOnboarded
    }
}
*/

@main
struct CalCountApp: App {
    
    //@ObservedObject var appState = AppState(hasOnboarded: false)
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            MotherView(viewRouter: viewRouter)
            /*
            if appState.hasOnboarded == false{
                Onboarding()
                    .environmentObject(appState)
            } else {
                Onboarding()
                    .environmentObject(appState)
            }
            */
        }
    }
}
