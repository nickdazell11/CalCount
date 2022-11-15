//
//  DailyLog.swift
//  CalCount
//
//  Created by Nick Dazell on 11/11/22.
//

import SwiftUI

struct DailyLog: View {
    var body: some View {
        ZStack {
            Color.theme.primary.ignoresSafeArea()
            Text("Enter your foods below:")
                .foregroundColor(Color.theme.accent)
                .frame(width: 300, height: 500)
                .position(x:205, y: 100)
            
        }
            
    }
}

struct DailyLog_Previews: PreviewProvider {
    static var previews: some View {
        DailyLog()
    }
}
