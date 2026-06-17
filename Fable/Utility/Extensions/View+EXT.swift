//
//  View+EXT.swift
//  Fable
//
//  Created by Dmytro Ipatii on 17/06/2026.
//

import SwiftUI

extension View {

    func elevation(_ shadow: Shadow) -> some View {
        self.shadow(
            color: shadow.color,
            radius: shadow.radius,
            x: shadow.x,
            y: shadow.y
        )
    }
}


