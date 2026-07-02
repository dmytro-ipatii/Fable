//
//  IDs.swift
//  Fable
//
//  Created by Dmytro Ipatii on 19/06/2026.
//

import Foundation

struct EntityID<Owner>: Hashable {
    let rawValue: String

    init(rawValue: String = UUID().uuidString) {
        self.rawValue = rawValue
    }
}

typealias UserID = EntityID<String>
