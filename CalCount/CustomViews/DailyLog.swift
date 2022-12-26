//
//  DailyLog.swift
//  CalCount
//
//  Created by Nick Dazell on 11/11/22.
//

import SwiftUI

var foodArr: [String] = []
var proArr: [String] = []
var fatArr: [String] = []
var carbArr: [String] = []
var calArr: [String] = []

var proLeft: Int = savedProtein
var fatLeft: Int = savedFat
var carbLeft: Int = savedCarb
var calLeft: Int = savedCal

struct DailyLog: View {
    @StateObject var viewRouter: ViewRouter
    @State var foodName: String = ""
    @State var proAmt: String = ""
    @State var fatAmt: String = ""
    @State var carbAmt: String = ""
    @State var calAmt: String = ""
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
                    TextField("Protein amount...", text: $proAmt)
                        .padding()
                }
                HStack {
                    Text("Fat(g):       ")
                        .padding()
                    TextField("Fat amount...", text: $fatAmt)
                        .padding()
                }
                HStack {
                    Text("Carbs(g):  ")
                        .padding()
                    TextField("Carb amount...", text: $carbAmt)
                        .padding()
                }
                HStack {
                    Text("Calories:    ")
                        .padding()
                    TextField("Calorie amount...", text: $calAmt)
                        .padding()
                }
                Button("ENTER FOOD") {
                    enterFood()
                }
                .padding()
                Button("Return Home") {
                    viewRouter.currentPage = .homePage
                }
                .padding()
                Button("View History") {
                    viewRouter.currentPage = .history
                }
                .padding()
            }
            
        }
            
    }
    func enterFood() {
        foodArr.append(foodName)
        proArr.append(proAmt)
        fatArr.append(fatAmt)
        carbArr.append(carbAmt)
        calArr.append(calAmt)
        proLeft = proLeft - Int(proAmt)!
        fatLeft = fatLeft - Int(fatAmt)!
        carbLeft = carbLeft - Int(carbAmt)!
        calLeft = calLeft - Int(calAmt)!
        foodName = ""
        proAmt = ""
        fatAmt = ""
        carbAmt = ""
        calAmt = ""
    }
}

struct DailyLog_Previews: PreviewProvider {
    static var previews: some View {
        DailyLog(viewRouter: ViewRouter())
    }
}
