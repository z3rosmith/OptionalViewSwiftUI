//
//  ContentView.swift
//  OptionalView
//
//  Created by Jinyoung Kim on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn1: Bool = true
    @State private var isOn2: Bool = true
    
    var body: some View {
        VStack {
            HStack {
                Toggle("TestView1", isOn: $isOn1)
                Spacer()
                Toggle("TestView2", isOn: $isOn2)
            }
            .padding()
            .frame(height: 100.0)
            
            Spacer()
            
            VStack {
                Text("Empty")
                    .background(.green)
                TestView1()
                    .show(isOn1)
                    .background(.blue)
            }
            .frame(height: 250)
            .background(.brown)
            
            HStack {
                Text("Empty")
                    .background(.green)
                TestView2()
                    .show(isOn2)
                    .background(.blue)
            }
            .frame(height: 250)
            .background(.brown)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
