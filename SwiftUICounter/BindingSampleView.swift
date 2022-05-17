//
//  BindingSampleView.swift
//  SwiftUICounter
//
//  Created by Allen on 2022/5/16.
//

import SwiftUI

struct BindingSampleView: View {
    @State private var sliderValue: Double = 0

    var body: some View {
        VStack {
            Text("Value:\(sliderValue)")
                .padding()
            CustomSlider(sliderValue: $sliderValue)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle("Binding")
    }
}

struct CustomSlider: View {

    @Binding var sliderValue: Double

    var body: some View {
        Slider(value: $sliderValue, in: 0...100)
    }
}
