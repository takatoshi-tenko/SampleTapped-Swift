//
//  ContentView.swift
//  SampleTapped
//
//  Created by 天孝高俊 on 2023/12/30.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    var body: some View {
        VStack {
            Text("\(number)")
            Button(action: {self.number += 1}) {
                Text("カウント")
            }
        }
    }
}

#Preview {
    ContentView()
}
