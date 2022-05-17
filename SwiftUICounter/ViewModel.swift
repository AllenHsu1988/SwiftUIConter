//
//  ViewModel.swift
//  SwiftUICounter
//
//  Created by Allen on 2022/5/16.
//

import SwiftUI

class ViewModel: ObservableObject {

    @Published var resultValue: Int = 0

    func computeResult(_ input: Int) {
        resultValue = input * input
    }
}
