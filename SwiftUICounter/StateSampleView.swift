//
//  StateSampleView.swift
//  SwiftUICounter
//
//  Created by Allen on 2022/5/16.
//

import SwiftUI

struct StateSampleView: View {
    @State private var count: Int = 0

    var body: some View {
        VStack {
            Text("Count:\(count)")
            Button("Button") {
                count += 1
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle("State")
    }
}
