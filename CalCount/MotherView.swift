//
//  MotherView.swift
//  CalCount
//
//  Created by Nick Dazell on 12/20/22.
//

import Foundation
import SwiftUI

struct MotherView: View {
    
    //@State var currentPage: Page = .homePage
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        switch viewRouter.currentPage {
        case .homePage:
            HomePage(viewRouter: viewRouter)
        case .onboarding:
            Onboarding(viewRouter: viewRouter)
        case .dailyLog:
            DailyLog(viewRouter: viewRouter)
        case .history:
            History(viewRouter: viewRouter)
        }
    }
}
struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter())
            
    }
}
