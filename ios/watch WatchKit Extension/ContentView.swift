//
//  ContentView.swift
//  watch WatchKit Extension
//
//  Created by Evan Martho on 03/02/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: WatchViewModel = WatchViewModel()
       
       var body: some View {
           VStack {
               Text("Counter: \(viewModel.counter)")
                   .padding()
               Button(action: {
                   viewModel.sendDataMessage(for: .sendCounterToFlutter, data: ["counter": viewModel.counter + 1])
               }) {
                   Text("+ by 2")
               }
           }
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
