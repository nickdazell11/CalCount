//
//  Onboarding.swift
//  CalCount
//
//  Created by Nick Dazell on 12/15/22.
//

import Foundation
import SwiftUI

var savedProtein: Int = UserDefaults.standard.integer(forKey: "ProKey")
var savedFat: Int = UserDefaults.standard.integer(forKey: "FatKey")
var savedCarb: Int = UserDefaults.standard.integer(forKey: "CarbKey")
var savedCal: Int = UserDefaults.standard.integer(forKey: "CalKey")

struct Onboarding: View {
    //@EnvironmentObject var appState: AppState
    @StateObject var viewRouter: ViewRouter
    
    @State var protein: Int = 0
    @State var fat: Int = 0
    @State var carb: Int = 0
    @State var cal: Int = 0
    
    let quantityFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.zeroSymbol = ""
        return formatter
    }()
    
    func saveMacros() {
        if (protein != 0) {
            UserDefaults.standard.set(protein, forKey: "ProKey")
            savedProtein = protein
        }
        if (fat != 0) {
            UserDefaults.standard.set(fat, forKey: "FatKey")
            savedFat = fat
        }
        if (carb != 0) {
            UserDefaults.standard.set(carb, forKey: "CarbKey")
            savedCarb = carb
        }
        if (cal != 0) {
            UserDefaults.standard.set(cal, forKey: "CalKey")
            savedCal = cal
        }
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
                Button("Go Back") {
                    viewRouter.currentPage = .homePage
                    //appState.hasOnboarded = true
                }
                .padding()
                Button("Save and Return") {
                    saveMacros()
                    viewRouter.currentPage = .homePage
                    //appState.hasOnboarded = true
                }
                .padding()
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
        Onboarding(viewRouter: ViewRouter())
            
    }
}
