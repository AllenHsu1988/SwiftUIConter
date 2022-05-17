//
//  ObservedObjectSampleView.swift
//  SwiftUICounter
//
//  Created by Allen on 2022/5/16.
//

import SwiftUI

struct ObservedObjectSampleView: View {
    @State var count: Int = 0
    @ObservedObject var viewModel = ViewModel()

    var body: some View {
        VStack {
            Text("Value:\(viewModel.resultValue)")
                .padding()
            Button("Button") {
                count += 1
                viewModel.computeResult(count)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle("ObservedObjectSampleView")
    }
}
