//
//  ContentView.swift
//  SampleTapped
//
//  Created by 天孝高俊 on 2023/12/30.
//

import SwiftUI

struct ContentView: View {
    @State var image:Image?
    @State var isPicking = false
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Spacer()
                    image?
                        .resizable()
                        .scaledToFit()
                    Spacer()
                }
                HStack {
                    Spacer()
                    Button(action: {
                        self.isPicking = true
                    }) {
                        Image(systemName: "camera")
                        Text("カメラ")
                    }.padding()
                }
            }
            if isPicking {
                ImagePicker()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
        }
    }
}

#Preview {
    ContentView()
}
