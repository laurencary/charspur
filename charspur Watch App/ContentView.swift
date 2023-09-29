//
//  ContentView.swift
//  charspur Watch App
//
//  Created by Lauren Armstrong on 9/24/23.
//

import SwiftUI

struct ScoreView: View {
    @EnvironmentObject var scoredata: ScoreData
//    @State private var score1 = 0
//    @State private var score2 = 0
    var body: some View {
        VStack {
            StepperView()
//                .environmentObject(scoredata)
            StepperView()
//                .environmentObject(scoredata)
            Button(action: {
                print("reset")
            }) {
                Text("Reset")
            }
        }
    }
}

struct ResetView: View {
    var body: some View {
        VStack {
            Text("confirm reset?")
            Button(action: {
                print("yes")
            }) {
                Text("yes")
            }
            Button(action: {
                print("no")
            }) {
                Text("no")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
//    static let scoredata = ScoreData()
//    @EnvironmentObject var scoredata: ScoreData
    static var previews: some View {
        ScoreView().environmentObject(ScoreData())
    }
    
}

struct StepperView: View {
    @EnvironmentObject var scoredata: ScoreData
//    @State private var value = 0
//    @Binding var value: Int
//    @State private var `in` = 0...Int.max
    func incrementStep() {
        scoredata.score1 += 1
    }
    
    func decrementStep() {
        if scoredata.score1 > 0 {scoredata.score1 -= 1}
    }
    
    var body: some View {
        Stepper {
            Text("\(scoredata.score1)")
        } onIncrement: {
            incrementStep()
        } onDecrement: {
            decrementStep()
        }
        .padding(5)
    }
}

