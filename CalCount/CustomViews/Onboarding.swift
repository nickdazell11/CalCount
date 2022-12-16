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
    var body: some View {
        ZStack{
            Color.theme.primary.ignoresSafeArea()
            VStack {
                Text("Enter Macros")
                    .frame(width:200, height:50)
                HStack {
                    Text("Protein:")
                    TextField("Enter protein here...", value: $protein, format: .number)
                        .padding()
                        .foregroundColor(Color.theme.accent)
                }
                HStack {
                    Text("Fat:       ")
                    TextField("Enter fat here...", value: $fat, format: .number)
                        .padding()
                        .foregroundColor(Color.theme.accent)
                }
                HStack {
                    Text("Carbs:  ")
                    TextField("Enter carbs here...", value: $carb, format: .number)
                        .padding()
                        .foregroundColor(Color.theme.accent)
                }
                HStack {
                    Text("Calories:")
                    TextField("Enter calories here...", value: $cal, format: .number)
                        .padding()
                        .foregroundColor(Color.theme.accent)
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
