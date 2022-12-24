//
//  History.swift
//  CalCount
//
//  Created by Nick Dazell on 12/22/22.
//

import Foundation
import SwiftUI

struct History: View {
    
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        ZStack {
            Color.theme.primary.ignoresSafeArea()
            VStack {
                ScrollView {
                    VStack {
                        Text("Today's Foods:")
                        HStack {
                            Text("Food")
                                .padding()
                            Text("Protein")
                                .padding()
                            Text("Fat")
                                .padding()
                            Text("Carbs")
                                .padding()
                            Text("Cals")
                                .padding()
                        }
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
                    }
                }
                Button("Return To Log") {
                    viewRouter.currentPage = .dailyLog
                }
                
            }
            
            
        }
            
    }
}

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History(viewRouter: ViewRouter())
    }
}
