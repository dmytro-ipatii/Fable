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

extension ChatMessage {
    static let mocks: [ChatMessage] = {
        let chatId = ChatID()
        let userId = UserID()
        let assistantId = UserID()

        return [
            ChatMessage(
                id: MessageID(),
                chatId: chatId,
                authorId: userId,
                seenByIds: [assistantId],
                role: .user,
                dateCreated: Date().adding(days: -1, hours: -6),
                content: "How do I create mock data in Swift?"
            ),

            ChatMessage(
                id: MessageID(),
                chatId: chatId,
                authorId: assistantId,
                seenByIds: [userId],
                role: .assistant,
                dateCreated: Date().adding(days: -1, hours: -6, minutes: 1),
                content: "You can use static properties, factory methods, or dedicated mock extensions."
            ),

            ChatMessage(
                id: MessageID(),
                chatId: chatId,
                authorId: userId,
                seenByIds: [assistantId],
                role: .user,
                dateCreated: Date().adding(days: -1, hours: -5, minutes: 58),
                content: "Which approach works best with SwiftUI previews?"
            ),

            ChatMessage(
                id: MessageID(),
                chatId: chatId,
                authorId: assistantId,
                seenByIds: [userId],
                role: .assistant,
                dateCreated: Date().adding(days: -1, hours: -5, minutes: 57),
                content: "Static mocks are usually the simplest option because they're easy to reuse across previews and tests."
            ),

            ChatMessage(
                id: MessageID(),
                chatId: chatId,
                authorId: userId,
                seenByIds: nil,
                role: .user,
                dateCreated: Date().adding(hours: -2),
                content: "Can you show me an example?"
            ),

            ChatMessage(
                id: MessageID(),
                chatId: chatId,
                authorId: assistantId,
                seenByIds: nil,
                role: .assistant,
                dateCreated: Date().adding(hours: -2, minutes: 1),
                content: "Sure! Create a static let mock and a static let mocks array on your model."
            ),
        ]
    }()

    static let mock = mocks[0]
}
