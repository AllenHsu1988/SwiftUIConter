//
//  ObservedObjectSampleView.swift
//  SwiftUICounter
//
//  Created by Allen on 2022/5/16.
//

import SwiftUI

struct ObservedObjectSampleView: View {
    @Binding var presenting: Bool

    @State var count: Int = 0
    @ObservedObject var viewModel = ViewModel()

    var body: some View {
        BackNavView(title: "ObservedObject") {
            self.presenting = false
        } content: {
            VStack {
                Text("Value:\(viewModel.resultValue)")
                    .padding()
                Button("Button") {
                    count += 1
                    viewModel.computeResult(count)
                }
            }
        }
    }
}
