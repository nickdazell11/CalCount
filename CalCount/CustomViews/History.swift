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
