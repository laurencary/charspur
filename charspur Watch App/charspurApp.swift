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
//    @EnvironmentObject var scoredata: ScoreData
    @State private var score1 = 0
    @State private var score2 = 0
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScoreView(score1: $score1, score2: $score2)
//                if scoredata.showReset {
//                    ResetView().environmentObject(scoredata)
//                } else { ScoreView(scoredata:scoredata).environmentObject(scoredata) }
            }
        }
    }
}


