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
    let title: String
    let dateCreated: Date
    let dateModified: Date
    let messages: [ChatMessage]
}

extension Chat {
    static let mock = mocks[0]

    static let mocks: [Chat] = {

        let userID = UserID()

        return [
            Chat(
                id: ChatID(),
                userId: userID,
                title: "Introduction",
                dateCreated: Date().adding(days: -7),
                dateModified: Date().adding(days: -7),
                messages: ChatMessage.mocks
            ),

            Chat(
                id: ChatID(),
                userId: userID,
                title: "Weekend Plans",
                dateCreated: Date().adding(days: -3),
                dateModified: Date().adding(days: -2, hours: -4),
                messages: ChatMessage.mocks
            ),

            Chat(
                id: ChatID(),
                userId: userID,
                title: "Swift Development",
                dateCreated: Date().adding(days: -1, hours: -6),
                dateModified: Date().adding(hours: -2),
                messages: ChatMessage.mocks
            ),
            Chat(
                id: ChatID(),
                userId: userID,
                title: "Vacation Ideas",
                dateCreated: Date().adding(hours: -12),
                dateModified: Date().adding(hours: -1),
                messages: ChatMessage.mocks
            ),
        ]
    }()
}
