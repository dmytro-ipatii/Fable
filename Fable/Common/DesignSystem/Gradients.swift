//
//  Gradients.swift
//  Fable
//
//  Created by Dmytro Ipatii on 17/06/2026.
//

import SwiftUI

private struct GenerateGradient {
    let colors: [Color]

    func renderLinear(
        startPoint: UnitPoint = .top,
        endPoint: UnitPoint = .bottom
    ) -> LinearGradient {
        LinearGradient(
            colors: colors,
            startPoint: startPoint,
            endPoint: endPoint,
        )
    }
}

enum Gradient {

    static let accentLinear: LinearGradient = GenerateGradient(
        colors: [.accentLight, .accent]
    ).renderLinear()

    static let violetLinear: LinearGradient = GenerateGradient(
        colors: [.violetLight, .violetDark]
    ).renderLinear(startPoint: .topLeading, endPoint: .bottomTrailing)

    static let skyLinear: LinearGradient = GenerateGradient(
        colors: [.skyLight, .skyDark]
    ).renderLinear(startPoint: .topLeading, endPoint: .bottomTrailing)

    static let slateLinear: LinearGradient = GenerateGradient(
        colors: [.slateLight, .slateDark]
    ).renderLinear(startPoint: .topLeading, endPoint: .bottomTrailing)

    static let roseLinear: LinearGradient = GenerateGradient(
        colors: [.roseLight, .roseDark]
    ).renderLinear(startPoint: .topLeading, endPoint: .bottomTrailing)

    static let mintLinear: LinearGradient = GenerateGradient(
        colors: [.mintLight, .mintDark]
    ).renderLinear(startPoint: .topLeading, endPoint: .bottomTrailing)

    static let mainLinear: LinearGradient = GenerateGradient(
        colors: [
            .peach,
            .customPink,
            .lavender,
            .skyWash,
        ]
    ).renderLinear()

    static let mainReversedLinear: LinearGradient = GenerateGradient(
        colors: [
            .skyWash,
            .lavender,
            .customPink,
            .peach,
        ]
    ).renderLinear()

    static let settingsLinear: LinearGradient = GenerateGradient(
        colors: [
            .lavender,
            .customPink,
            .peach,
        ]
    ).renderLinear()

    static let chatLinear: LinearGradient = GenerateGradient(
        colors: [
            .skyWash.opacity(0.9),
            .lavender.opacity(0.9),
            .customPink.opacity(0.9),

        ],
    ).renderLinear()
}
