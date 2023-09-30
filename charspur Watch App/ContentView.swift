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
    var body: some View {
        VStack {
            StepperView(value: $score1)
//                .environmentObject(scoredata)
            StepperView(value: $score2)
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

struct PreviewContainer: View {
    @State private var score1 = 0
    @State private var score2 = 0
    var body: some View {
        ScoreView(score1: $score1, score2: $score2)
    }
}

struct ContentView_Previews: PreviewProvider {
//    static let scoredata = ScoreData()
//    static let scoredata = ScoreData()
//    @StateObject static var scoredata = ScoreData()

    static var previews: some View {
        PreviewContainer()
//    https://www.avanderlee.com/swiftui/stateobject-observedobject-differences/
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

