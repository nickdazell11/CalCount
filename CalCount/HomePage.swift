//
//  ContentView.swift
//  CalCount
//
//  Created by Nick Dazell on 11/6/22.
//

import SwiftUI

struct HomePage: View {
    
    //@EnvironmentObject var appState: AppState
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        ZStack{
            Color.theme.primary.ignoresSafeArea()
            Image("paintLogo")
                .resizable()
                .foregroundColor(Color.theme.primary)
                .frame(width: 300, height: 270)
                .clipped()
            Text("CalCount")
                .dynamicTypeSize(DynamicTypeSize.xxxLarge)
                .font(.largeTitle)
                .foregroundColor(Color.theme.accent)
                .position(x: 205, y: 575)
            Button("Enter/Adjust Macros") {
                viewRouter.currentPage = .onboarding
                //appState.hasOnboarded = false
            }
            .position(x: 205, y: 650)
            Button("Daily Log") {
                viewRouter.currentPage = .dailyLog
            }
            .position(x: 205, y: 700)
            .font(.headline)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePage(viewRouter: ViewRouter())
            
    }
}
