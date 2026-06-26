//
//  AlertContent.swift
//  Fable
//
//  Created by Dmytro Ipatii on 26/06/2026.
//
import SwiftUI

struct AlertContent: Sendable {
    let title: String
    let message: String?
    let actions: () -> AnyView

    init(
        title: String,
        message: String? = nil,
        actions: (() -> AnyView)? = nil
    ) {
        self.title = title
        self.message = message
        self.actions = actions ?? {
            AnyView(
                Button("Ok", action: ({}))
            )
        }
    }
}
