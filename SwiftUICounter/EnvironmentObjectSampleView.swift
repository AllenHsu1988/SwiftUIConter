//
//  EnvironmentObjectSampleView.swift
//  SwiftLab
//
//  Created by Allen on 2022/3/8.
//

import SwiftUI

struct EnvironmentObjectSampleView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var count: Int = 0
    @ObservedObject var viewModel1 = ViewModel()
    @ObservedObject var viewModel2 = ViewModel()

    var body: some View {
        BackNavView(title: "EnvironmentObject") {
            self.dismiss()
        } content: {
            VStack {
                UserView().padding()
                Button("Button") {
                    count += 1
                    viewModel1.computeResult(count)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .environmentObject(viewModel1)// The first object takes priority over any following objects.
            .environmentObject(viewModel2)
        }
    }
}

struct UserView: View {
    @EnvironmentObject var viewModel: ViewModel

    var body: some View {
        Text("Value:\(viewModel.resultValue)")
    }
}
