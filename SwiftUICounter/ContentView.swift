//
//  ContentView.swift
//  SwiftUICounter
//
//  Created by Allen on 2022/5/16.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View{
        NavigationView {
            VStack(alignment: .center, spacing: 10, content: {
                NavigationLink {
                    StateSampleView()
                } label: {
                    Text("State")
                }
                NavigationLink {
                    BindingSampleView()
                } label: {
                    Text("Binding")
                }
                NavigationLink {
                    ObservedObjectSampleView()
                } label: {
                    Text("ObservedObject")
                }
                NavigationLink {
                    EnvironmentObjectSampleView()
                } label: {
                    Text("EnvironmentObject")
                }
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationTitle("Sample")
        }
    }
    
}
