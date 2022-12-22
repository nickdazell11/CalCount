//
//  CalCountApp.swift
//  CalCount
//
//  Created by Nick Dazell on 11/6/22.
//

import SwiftUI

@main
struct CalCountApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            MotherView(viewRouter: viewRouter)
        }
    }
}
