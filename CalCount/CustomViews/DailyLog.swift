//
//  DailyLog.swift
//  CalCount
//
//  Created by Nick Dazell on 11/11/22.
//

import SwiftUI

struct DailyLog: View {
    @StateObject var viewRouter: ViewRouter
    @State var foodName: String = ""
    var body: some View {
        ZStack {
            Color.theme.primary.ignoresSafeArea()
            VStack {
                Text("Enter your foods below:")
                    .foregroundColor(Color.theme.accent)
                    .padding()
                    //.frame(width: 300, height: 500)
                    //.position(x:205, y: 100)
                HStack {
                    Text("Food:        ")
                        .padding()
                    TextField("Food Name...", text: $foodName)
                        .padding()
                }
                HStack {
                    Text("Protein(g):")
                        .padding()
                    TextField("Protein amount...", text: $foodName)
                        .padding()
                }
                HStack {
                    Text("Fat(g):       ")
                        .padding()
                    TextField("Fat amount...", text: $foodName)
                        .padding()
                }
                HStack {
                    Text("Carbs(g):  ")
                        .padding()
                    TextField("Carb amount...", text: $foodName)
                        .padding()
                }
                HStack {
                    Text("Calories:    ")
                        .padding()
                    TextField("Calorie amount...", text: $foodName)
                        .padding()
                }
                Button("ENTER FOOD") {
                    viewRouter.currentPage = .homePage
                }
                .padding()
                Button("Return Home") {
                    viewRouter.currentPage = .homePage
                }
                .padding()
                //.position(x:205, y: 50)
                Button("View History") {
                    viewRouter.currentPage = .history
                }
                .padding()
                //.position(x:205, y: 100)
            }
            
        }
            
    }
}

struct DailyLog_Previews: PreviewProvider {
    static var previews: some View {
        DailyLog(viewRouter: ViewRouter())
    }
}
