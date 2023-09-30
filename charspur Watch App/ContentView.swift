//
//  ContentView.swift
//  charspur Watch App
//
//  Created by Lauren Armstrong on 9/24/23.
//

import SwiftUI

struct ScoreView: View {
//    @ObservedObject var scoredata: ScoreData
    @Binding var score1: Int
    @Binding var score2: Int
    @Binding var showReset: Bool
    var body: some View {
        VStack {
            StepperView(value: $score1)
//                .environmentObject(scoredata)
            StepperView(value: $score2)
//                .environmentObject(scoredata)
            Button(action: {
                showReset = true
            }) {
                Text("Reset")
            }
        }
    }
}

struct ResetView: View {
    @Binding var score1: Int
    @Binding var score2: Int
    @Binding var showReset: Bool
    
    func resetScores(shouldReset: Bool) {
        if shouldReset {
            score1 = 0
            score2 = 0
        }
        showReset = false
    }
    
    var body: some View {
        VStack {
            Text("confirm reset?")
            Button(action: {
                resetScores(shouldReset: true)
            }) {
                Text("yes")
            }
            Button(action: {
                resetScores(shouldReset: false)
            }) {
                Text("no")
            }
        }
    }
}

struct PreviewContainer: View {
    @State private var score1 = 1
    @State private var score2 = 0
    @State private var showReset = false
    var body: some View {
//        ScoreView(score1: $score1, score2: $score2, showReset: $showReset)
        if (showReset) {
            ResetView(score1: $score1, score2: $score2, showReset: $showReset)
        } else {
            ScoreView(score1: $score1, score2: $score2, showReset: $showReset)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewContainer()
    }
    
}

struct StepperView: View {
//    @State private var value = 0
    @Binding var value: Int
//    @State private var `in` = 0...Int.max
    func incrementStep() {
        value += 1
    }
    
    func decrementStep() {
        if value > 0 {value -= 1}
    }
    
    var body: some View {
        Stepper {
            Text("\(value)")
        } onIncrement: {
            incrementStep()
        } onDecrement: {
            decrementStep()
        }
        .padding(5)
    }
}

