//
//  Binding+EXT.swift
//  Fable
//
//  Created by Dmytro Ipatii on 25/06/2026.
//

import Foundation
import SwiftUI

extension Binding where Value == Bool {

    init<T: Sendable>(
        ifNotNil value: Binding<T?>
    ) {
        self.init {
            value.wrappedValue != nil
        } set: { newValue in
            if !newValue {
                value.wrappedValue = nil
            }
        }

    }
}
