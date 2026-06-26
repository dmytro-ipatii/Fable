//
//  CustomAlert.swift
//  Fable
//
//  Created by Dmytro Ipatii on 26/06/2026.
//

import SwiftUI

extension View {

    @ViewBuilder
    func customAlert(content: Binding<AlertContent?>, type: AlertType = .alert) -> some View {

        let title = content.wrappedValue?.title ?? ""
        let message = content.wrappedValue?.message

        switch type {
        case .alert:
            self.alert(
                title,
                isPresented: Binding(ifNotNil: content),
                actions: {
                    content.wrappedValue?.actions()
                },
                message: {
                    if let message {
                        Text(message)
                    }
                }
            )

        case .confirmationAction:
            self.confirmationDialog(
                title,
                isPresented: Binding(ifNotNil: content),
                titleVisibility: .visible,
                ) {
                    content.wrappedValue?.actions()
                } message: {

                    if let message {
                        Text(message)
                    }

                }
        }

    }
}
