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
    @State var proAmt: String = ""
    @State var fatAmt: String = ""
    @State var carbAmt: String = ""
    @State var calAmt: String = ""
    @State var foodArr: [String] = []
    @State var proArr: [String] = []
    @State var fatArr: [String] = []
    @State var carbArr: [String] = []
    @State var calArr: [String] = []
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
                HStack {
                    VStack {
                        ForEach(foodArr, id: \.self) {data in
                            Text(data)
                                .padding()
                        }
                    }
                    VStack {
                        ForEach(proArr, id: \.self) {data in
                            Text(data)
                                .padding()
                        }
                    }
                    VStack {
                        ForEach(fatArr, id: \.self) {data in
                            Text(data)
                                .padding()
                        }
                    }
                    VStack {
                        ForEach(carbArr, id: \.self) {data in
                            Text(data)
                                .padding()
                        }
                    }
                    VStack {
                        ForEach(calArr, id: \.self) {data in
                            Text(data)
                                .padding()
                        }
                    }
                }
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
