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
            Text("Today's Foods:")
                .foregroundColor(Color.theme.accent)
                .frame(width: 300, height: 500)
                .position(x:205, y: 100)
            Button("Return To Log") {
                viewRouter.currentPage = .dailyLog
            }
            
        }
            
    }
}

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History(viewRouter: ViewRouter())
    }
}
