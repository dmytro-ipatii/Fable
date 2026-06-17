//
//  ContentView.swift
//  Fable
//
//  Created by Dmytro Ipatii on 16/06/2026.
//

import SwiftUI

struct MainAppView: View {
    var body: some View {
        VStack {

            VStack(spacing: Spacing.xLarge) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                    .foregroundColor(.white)
            }
            .padding(30)
            .background(
                Shape.card
                    .fill(Gradient.skyLinear)
            )

            Button(
                action: {
                },
                label: {
                    HStack {
                        Text("Continue")
                            .foregroundStyle(.white)
                    }
                    .padding(.horizontal, 8)
                    .frame(minHeight: 50)
                    .frame(maxWidth: .infinity)
                    .background(
                        Shape.button
                            .fill(
                                Gradient.accentLinear
                            )
                    )
                    

            })

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()

        .ignoresSafeArea()

    }
}

#Preview("Main gradient") {
    MainAppView()
        .background(
            Gradient.mainLinear
        )
}

#Preview("Main gradient reversed") {
    MainAppView()
        .background(
            Gradient.mainReversedLinear
        )
}

#Preview("Settings gradient") {
    MainAppView()
        .background(
            Gradient.settingsLinear
        )
}

#Preview("Chat gradient") {
    MainAppView()
        .background(
            Gradient.chatLinear
        )
}
