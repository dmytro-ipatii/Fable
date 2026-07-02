//
//  Chat.swift
//  Fable
//
//  Created by Dmytro Ipatii on 19/06/2026.
//

import Foundation

struct Chat {
    let id: ChatID
    let userId: UserID
    let characterId: CharacterID
    let title: String
    let dateCreated: Date
    let dateModified: Date
    let messages: [ChatMessage]
}
