//
//  ContentView.swift
//  CalCount
//
//  Created by Nick Dazell on 11/6/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appState: AppState
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
                appState.hasOnboarded = false
            }
            .position(x: 205, y: 650)
            Button("Daily Log") {
                DailyLog()
            }
            .position(x: 205, y: 700)
            .font(.headline)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
