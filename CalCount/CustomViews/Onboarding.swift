//
//  Onboarding.swift
//  CalCount
//
//  Created by Nick Dazell on 12/15/22.
//

import Foundation
import SwiftUI

struct Onboarding: View {
    @EnvironmentObject var appState: AppState
    @State var protein: Int? = nil
    @State var fat: Int? = nil
    @State var carb: Int? = nil
    @State var cal: Int? = nil
    
    @State var savedProtein: Int? = nil
    @State var savedFat: Int? = nil
    @State var savedCarb: Int? = nil
    @State var savedCal: Int? = nil
    
    /*
    func saveMacros() {
        if savedProtein != nil {
            protein = savedProtein
        }
    }
    */
    
    var body: some View {
        ZStack{
            Color.theme.primary.ignoresSafeArea()
            VStack {
                Text("Enter Macros")
                    .frame(width:200, height:50)
                    .foregroundColor(Color.theme.accent)
                HStack {
                    Text("Protein: ")
                        .padding()
                        .foregroundColor(Color.theme.accent)
                    TextField("Enter protein here...", value: $protein, format: .number)
                        .padding()
                        .foregroundColor(Color.theme.accent)
                }
                HStack {
                    Text("Fat:         ")
                        .padding()
                        .foregroundColor(Color.theme.accent)
                    TextField("Enter fat here...", value: $fat, format: .number)
                        .padding()
                        .foregroundColor(Color.theme.accent)
                }
                HStack {
                    Text("Carbs:    ")
                        .padding()
                        .foregroundColor(Color.theme.accent)
                    TextField("Enter carbs here...", value: $carb, format: .number)
                        .padding()
                        .foregroundColor(Color.theme.accent)
                }
                HStack {
                    Text("Calories:")
                        .padding()
                        .foregroundColor(Color.theme.accent)
                    TextField("Enter calories here...", value: $cal, format: .number)
                        .padding()
                        .foregroundColor(Color.theme.accent)
                }
                Button("Save and Close") {
                    savedProtein = protein
                    savedFat = fat
                    savedCarb = carb
                    savedCal = cal
                    appState.hasOnboarded = true
                }
            }
        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
            
    }
}
