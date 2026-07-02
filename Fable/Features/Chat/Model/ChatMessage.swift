//
//  Message.swift
//  Fable
//
//  Created by Dmytro Ipatii on 19/06/2026.
//
import Foundation

struct ChatMessage {
    let id: MessageID
    let chatId: ChatID
    let authorId: UserID
    let seenByIds: [UserID]?

    let role: ChatRole

    let dateCreated: Date?
    let content: String
}
