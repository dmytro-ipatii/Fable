//
//  Gradients.swift
//  Fable
//
//  Created by Dmytro Ipatii on 17/06/2026.
//

import SwiftUI

private struct GenerateGradient {
    let colors: [Color]

    init(colors: [Color]) {
        self.colors = colors
    }

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

struct Gradient {

    static var accentLinear: LinearGradient = GenerateGradient(
        colors: [.accentLight, .accent]
    ).renderLinear()

    static var violetLinear: LinearGradient = GenerateGradient(
        colors: [.violetLight, .violetDark]
    ).renderLinear(startPoint: .topLeading, endPoint: .bottomTrailing)

    static var skyLinear: LinearGradient = GenerateGradient(
        colors: [.skyLight, .skyDark]
    ).renderLinear(startPoint: .topLeading, endPoint: .bottomTrailing)

    static var slateLinear: LinearGradient = GenerateGradient(
        colors: [.slateLight, .slateDark]
    ).renderLinear(startPoint: .topLeading, endPoint: .bottomTrailing)

    static var roseLinear: LinearGradient = GenerateGradient(
        colors: [.roseLight, .roseDark]
    ).renderLinear(startPoint: .topLeading, endPoint: .bottomTrailing)

    static var mintLinear: LinearGradient = GenerateGradient(
        colors: [.mintLight, .mintDark]
    ).renderLinear(startPoint: .topLeading, endPoint: .bottomTrailing)

    static var mainLinear: LinearGradient = GenerateGradient(
        colors: [
            .peach,
            .customPink,
            .lavender,
            .skyWash,
        ]
    ).renderLinear()

    static var mainReversedLinear: LinearGradient = GenerateGradient(
        colors: [
            .skyWash,
            .lavender,
            .customPink,
            .peach,
        ]
    ).renderLinear()

    static var settingsLinear: LinearGradient = GenerateGradient(
        colors: [
            .lavender,
            .customPink,
            .peach,
        ]
    ).renderLinear()

    static var chatLinear: LinearGradient = GenerateGradient(
        colors: [
            .skyWash.opacity(0.9),
            .lavender.opacity(0.9),
            .customPink.opacity(0.9),

        ],
    ).renderLinear()
}
