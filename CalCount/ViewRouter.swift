//
//  ViewRouter.swift
//  CalCount
//
//  Created by Nick Dazell on 12/20/22.
//

import Foundation
import SwiftUI

enum Page {
    case homePage
    case onboarding
    case dailyLog
}

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .homePage
}
