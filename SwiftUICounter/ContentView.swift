//
//  ContentView.swift
//  SwiftUICounter
//
//  Created by Allen on 2022/5/16.
//

import SwiftUI

struct ContentView: View {
    @State var presentingObservedObject = false
    @State var presentingEnvironmentObject = false
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
                Button("ObservedObject") {
                    self.presentingObservedObject = true
                }
                Button("EnvironmentObject") {
                    self.presentingEnvironmentObject = true
                }
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationTitle("Sample")
            .sheet(isPresented: $presentingObservedObject) { ObservedObjectSampleView(presenting: $presentingObservedObject) }
            .fullScreenCover(isPresented: $presentingEnvironmentObject) {
                EnvironmentObjectSampleView()
            }
        }
    }
    
}

struct ModalView: View {
    @Binding var presentedAsModal: Bool
    var body: some View {
        Button("dismiss") { self.presentedAsModal = false }
    }
}
