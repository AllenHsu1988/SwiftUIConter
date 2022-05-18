//
//  BackNavView.swift
//  SwiftUICounter
//
//  Created by Allen on 2022/5/18.
//

import SwiftUI

struct BackNavView<Content: View>: View {
    let title: String
    let onBack: () -> Void
    let content: () -> Content
    
    var body: some View {
        NavigationView {
            content()
                .navigationTitle(title)
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: Button(action: {
                    onBack()
                }, label: {
                    HStack {
                        Image(systemName: "chevron.left")
                            .aspectRatio(contentMode: .fit)
                    }
                }))
        }
    }
}
