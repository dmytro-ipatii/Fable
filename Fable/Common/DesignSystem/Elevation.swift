//
//  Elevation.swift
//  Fable
//
//  Created by Dmytro Ipatii on 17/06/2026.
//

import SwiftUI

struct Shadow {
    let color: Color
    let radius: CGFloat
    let x: CGFloat
    let y: CGFloat
}

enum Elevation {
    static let subtle: Shadow = Shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 2)
    static let glassSoft: Shadow = Shadow(color: .black.opacity(0.08), radius: 12, x: 0, y: 8)
    static let lifted: Shadow = Shadow(color: .black.opacity(0.12), radius: 15, x: 0, y: 12)
    static let accentGlow: Shadow = Shadow(color: .accentColor.opacity(0.42), radius: 14, x: 0, y: 10)
}
