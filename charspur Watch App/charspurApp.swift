//
//  charspurApp.swift
//  charspur Watch App
//
//  Created by Lauren Armstrong on 9/24/23.
//

import SwiftUI

@main
struct charspur_Watch_AppApp: App {
    @State private var showReset = false
    var body: some Scene {
        WindowGroup {
            NavigationView {
                if showReset {
                    ResetView()
                } else { ScoreView() }
            }
        }
    }
}


