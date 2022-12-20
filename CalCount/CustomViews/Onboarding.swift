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
    @State var protein: Int = 0
    @State var fat: Int = 0
    @State var carb: Int = 0
    @State var cal: Int = 0
    
    @State var savedProtein: Int = UserDefaults.standard.integer(forKey: "ProKey")
    @State var savedFat: Int = UserDefaults.standard.integer(forKey: "FatKey")
    @State var savedCarb: Int = UserDefaults.standard.integer(forKey: "CarbKey")
    @State var savedCal: Int = UserDefaults.standard.integer(forKey: "CalKey")
    
    let quantityFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.zeroSymbol = ""
        return formatter
    }()
    
    func saveMacros() {
        UserDefaults.standard.set(protein, forKey: "ProKey")
        UserDefaults.standard.set(fat, forKey: "FatKey")
        UserDefaults.standard.set(carb, forKey: "CarbKey")
        UserDefaults.standard.set(cal, forKey: "CalKey")
        savedProtein = protein
        savedFat = fat
        savedCarb = carb
        savedCal = cal
    }
    
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
                    TextField("Enter protein here...", value: $protein, formatter: quantityFormatter)
                        .padding()
                        .foregroundColor(Color.theme.accent)
                }
                HStack {
                    Text("Fat:         ")
                        .padding()
                        .foregroundColor(Color.theme.accent)
                    TextField("Enter fat here...", value: $fat, formatter: quantityFormatter)
                        .padding()
                        .foregroundColor(Color.theme.accent)
                }
                HStack {
                    Text("Carbs:    ")
                        .padding()
                        .foregroundColor(Color.theme.accent)
                    TextField("Enter carbs here...", value: $carb, formatter: quantityFormatter)
                        .padding()
                        .foregroundColor(Color.theme.accent)
                }
                HStack {
                    Text("Calories:")
                        .padding()
                        .foregroundColor(Color.theme.accent)
                    TextField("Enter calories here...", value: $cal, formatter: quantityFormatter)
                        .padding()
                        .foregroundColor(Color.theme.accent)
                }
                Button("Save and Close") {
                    saveMacros()
                    appState.hasOnboarded = true
                }
                Section(header: Text("Saved Macros:")) {
                    Text(String(savedProtein))
                    Text(String(savedFat))
                    Text(String(savedCarb))
                    Text(String(savedCal))
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
