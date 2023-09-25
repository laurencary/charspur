//
//  ContentView.swift
//  charspur Watch App
//
//  Created by Lauren Armstrong on 9/24/23.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        VStack {
            StepperView()
            StepperView()
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
   
    static var previews: some View {
        ResetView()
    }
}

struct StepperView: View {
    @State private var value = 0
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

