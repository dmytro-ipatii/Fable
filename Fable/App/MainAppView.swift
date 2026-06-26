//
//  ContentView.swift
//  Fable
//
//  Created by Dmytro Ipatii on 16/06/2026.
//

import SwiftUI

struct MainAppView: View {

    @State private var alertContent: AlertContent?
    @State private var deleteItemConfirmation: AlertContent?

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

            Button("Delete") {
                deleteItemConfirmation = AlertContent(
                    title: "Delete item?",
                    message: "Your item will be deleted permanently, and cannot be restored.",
                    actions: ({
                        AnyView(
                            Group {
                                Button("Cancel") {

                                }

                                Button("Ok") {

                                }
                            }
                        )
                    })
                )
            }
            .customAlert(content: $deleteItemConfirmation, type: .confirmationAction)

            Button(
                action: {
                    alertContent = AlertContent(
                        title: "Leave this page?",
                        message: "All you progress will be lost, and cannot be restored.",
                        actions: ({
                            AnyView(
                                Group {
                                    Button("Cancel", role: .cancel) {

                                    }

                                    Button("Ok") {

                                    }
                                }
                            )
                        })
                    )
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
                .customAlert(content: $alertContent)

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
