//
//  charspurApp.swift
//  charspur Watch App
//
//  Created by Lauren Armstrong on 9/24/23.
//

import SwiftUI

class ScoreData : ObservableObject {
    @Published var score1: Int = 0
    @Published var score2: Int = 0
    @Published var showReset: Bool = false
}

@main
struct charspur_Watch_AppApp: App {
//    @State private var showReset = false
    @EnvironmentObject var scoredata: ScoreData
    var body: some Scene {
        WindowGroup {
            NavigationView {
                if scoredata.showReset {
                    ResetView().environmentObject(scoredata)
                } else { ScoreView().environmentObject(scoredata) }
            }
        }
    }
}


