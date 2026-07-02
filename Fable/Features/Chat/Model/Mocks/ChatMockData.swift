//
//  ChatMockData.swift
//  Fable
//
//  Created by Dmytro Ipatii on 02/07/2026.
//

import Foundation

// swiftlint:disable line_length

// MARK: - Chat Mock Data
//
// Four sample conversations, one per story, each written in the voice of the
// character and drawing on that story's facts.
//
// Design notes on the models:
//  • `authorId` is a UserID even for character messages. Since `role` already
//    identifies the speaker, `role` is treated as the source of truth, and
//    character messages are given a traceable UserID derived from the
//    character's id (e.g. "character.lotr.gandalf"). Adjust if your app uses a
//    single shared assistant id instead.
//  • `seenByIds` is a group-chat-style field; in a 1:1 chat it's populated
//    here just to demonstrate the shape.
//  • Assumes `typealias UserID = EntityID<User>` exists in the app.

extension MockData {

    // MARK: - The demo user

    static let demoUserId = UserID(rawValue: "user.demo")

    // MARK: - Character IDs (match MockData.characters)

    private enum ChatCharacterIDs {
        static let gandalf   = CharacterID(rawValue: "lotr.gandalf")
        static let holmes    = CharacterID(rawValue: "sherlock.holmes")
        static let cheshire  = CharacterID(rawValue: "alice.cheshire_cat")
        static let scarecrow = CharacterID(rawValue: "oz.scarecrow")
    }

    // MARK: - Chat IDs (defined first so messages can reference them)

    private enum ChatIDs {
        static let gandalf   = ChatID(rawValue: "chat.gandalf.ring")
        static let holmes    = ChatID(rawValue: "chat.holmes.deduction")
        static let cheshire  = ChatID(rawValue: "chat.cheshire.whichway")
        static let scarecrow = ChatID(rawValue: "chat.scarecrow.brains")
    }

    // MARK: - Chats

    static let chats: [Chat] = [
        gandalfChat,
        holmesChat,
        cheshireChat,
        scarecrowChat,
    ]

    // MARK: - Gandalf · "The burden of the Ring"

    private static let gandalfChat = Chat(
        id: ChatIDs.gandalf,
        userId: demoUserId,
        characterId: ChatCharacterIDs.gandalf,
        title: "The burden of the Ring",
        dateCreated: date(2026, 6, 28, 20, 14),
        dateModified: date(2026, 6, 28, 20, 21),
        messages: [
            userMessage(
                "Gandalf, why did the Ring have to be destroyed? Couldn't it just be hidden away somewhere safe?",
                chatId: ChatIDs.gandalf,
                date: date(2026, 6, 28, 20, 14)
            ),
            characterMessage(
                "Hidden? No, my friend. There is no vault deep enough, no sea wide enough to keep it from him. The Ring is Sauron's own will made metal, and it longs to return to his hand. While it endures, he can never truly be defeated. It had to be unmade in the very fire where it was forged — the fires of Mount Doom.",
                chatId: ChatIDs.gandalf,
                characterId: ChatCharacterIDs.gandalf,
                date: date(2026, 6, 28, 20, 15)
            ),
            userMessage(
                "Then why not carry it yourself? You're far more powerful than a hobbit.",
                chatId: ChatIDs.gandalf,
                date: date(2026, 6, 28, 20, 17)
            ),
            characterMessage(
                "Do not tempt me! I dare not take it. Understand — I would wish to use it only to do good. But through me it would wield a power too great and terrible to imagine. That is the cruelty of the thing: it turns even good intentions to ruin. The wise are the most easily corrupted, for they can see the most that might be done.",
                chatId: ChatIDs.gandalf,
                characterId: ChatCharacterIDs.gandalf,
                date: date(2026, 6, 28, 20, 18)
            ),
            userMessage(
                "Frodo seemed so small for such an enormous task.",
                chatId: ChatIDs.gandalf,
                date: date(2026, 6, 28, 20, 20)
            ),
            characterMessage(
                "And that was precisely his strength. Such a burden corrupts through desire for power, and a hobbit desires so little of it. The small hands do such deeds while the eyes of the great are elsewhere. I have found that it is the small, everyday folk who keep the darkness at bay — not with great power, but with simple kindness and courage.",
                chatId: ChatIDs.gandalf,
                characterId: ChatCharacterIDs.gandalf,
                date: date(2026, 6, 28, 20, 21)
            ),
        ]
    )

    // MARK: - Sherlock Holmes · "The art of deduction"

    private static let holmesChat = Chat(
        id: ChatIDs.holmes,
        userId: demoUserId,
        characterId: ChatCharacterIDs.holmes,
        title: "The art of deduction",
        dateCreated: date(2026, 6, 30, 9, 2),
        dateModified: date(2026, 6, 30, 9, 11),
        messages: [
            userMessage(
                "Mr. Holmes, how do you solve cases that baffle everyone else at Scotland Yard?",
                chatId: ChatIDs.holmes,
                date: date(2026, 6, 30, 9, 2)
            ),
            characterMessage(
                "The difference is simple, though few grasp it: you see, but you do not observe. Lestrade and his colleagues look at a crime and take in only the obvious. I attend to the trifles — the mud on a boot, the wear of a cuff, the ash of a cigar. From these small facts, reasoned upon in their proper order, the whole truth assembles itself.",
                chatId: ChatIDs.holmes,
                characterId: ChatCharacterIDs.holmes,
                date: date(2026, 6, 30, 9, 4)
            ),
            userMessage(
                "Could you deduce something about me, right now?",
                chatId: ChatIDs.holmes,
                date: date(2026, 6, 30, 9, 6)
            ),
            characterMessage(
                "A small parlour game, but very well. You write to me late in the evening, in short bursts, then pause — a busy mind returning to a single question through a long day rather than a leisured one. You are drawn to method and how things work, not merely to the sensational result. And you are, I'd wager, a builder of some kind: you do not ask me what I concluded, but how. That is the question of a maker, not a spectator.",
                chatId: ChatIDs.holmes,
                characterId: ChatCharacterIDs.holmes,
                date: date(2026, 6, 30, 9, 8)
            ),
            userMessage(
                "That's uncanny. How could you possibly know that?",
                chatId: ChatIDs.holmes,
                date: date(2026, 6, 30, 9, 10)
            ),
            characterMessage(
                "Elementary, once laid bare — as it always is. There is nothing uncanny in it; I merely decline to ignore what is plainly before me. When you have eliminated the impossible, whatever remains, however improbable, must be the truth. Most call it magic only because they have never troubled to look.",
                chatId: ChatIDs.holmes,
                characterId: ChatCharacterIDs.holmes,
                date: date(2026, 6, 30, 9, 11)
            ),
        ]
    )

    // MARK: - The Cheshire Cat · "Which way should I go?"

    private static let cheshireChat = Chat(
        id: ChatIDs.cheshire,
        userId: demoUserId,
        characterId: ChatCharacterIDs.cheshire,
        title: "Which way should I go?",
        dateCreated: date(2026, 7, 1, 16, 45),
        dateModified: date(2026, 7, 1, 16, 52),
        messages: [
            userMessage(
                "Cheshire Cat, which way should I go from here?",
                chatId: ChatIDs.cheshire,
                date: date(2026, 7, 1, 16, 45)
            ),
            characterMessage(
                "That depends a good deal on where you want to get to. Do tell — I find destinations so much more interesting than directions.",
                chatId: ChatIDs.cheshire,
                characterId: ChatCharacterIDs.cheshire,
                date: date(2026, 7, 1, 16, 46)
            ),
            userMessage(
                "I don't much care where, really.",
                chatId: ChatIDs.cheshire,
                date: date(2026, 7, 1, 16, 48)
            ),
            characterMessage(
                "Then it doesn't much matter which way you go, does it? You're sure to get somewhere if you only walk long enough. Somewhere is never in short supply here.",
                chatId: ChatIDs.cheshire,
                characterId: ChatCharacterIDs.cheshire,
                date: date(2026, 7, 1, 16, 49)
            ),
            userMessage(
                "Are you really mad, like everyone says?",
                chatId: ChatIDs.cheshire,
                date: date(2026, 7, 1, 16, 51)
            ),
            characterMessage(
                "Oh, quite. But then, we're all mad here. I'm mad. You're mad. You must be, or you wouldn't have come down the rabbit hole at all. The only difference is that I have the good manners to grin about it.",
                chatId: ChatIDs.cheshire,
                characterId: ChatCharacterIDs.cheshire,
                date: date(2026, 7, 1, 16, 52)
            ),
        ]
    )

    // MARK: - The Scarecrow · "On brains and wisdom"

    private static let scarecrowChat = Chat(
        id: ChatIDs.scarecrow,
        userId: demoUserId,
        characterId: ChatCharacterIDs.scarecrow,
        title: "On brains and wisdom",
        dateCreated: date(2026, 7, 2, 11, 30),
        dateModified: date(2026, 7, 2, 11, 36),
        messages: [
            userMessage(
                "Scarecrow, what is it you want most in all the world?",
                chatId: ChatIDs.scarecrow,
                date: date(2026, 7, 2, 11, 30)
            ),
            characterMessage(
                "Oh, that's easy — brains! My head is stuffed with straw, you see, and not a single thought in it. That's why I'm off to the Emerald City. If the great Wizard could give me some brains, I should be the happiest scarecrow in all of Oz.",
                chatId: ChatIDs.scarecrow,
                characterId: ChatCharacterIDs.scarecrow,
                date: date(2026, 7, 2, 11, 31)
            ),
            userMessage(
                "But you're always the one who comes up with the clever plan when the group is in trouble!",
                chatId: ChatIDs.scarecrow,
                date: date(2026, 7, 2, 11, 33)
            ),
            characterMessage(
                "Am I? Well now, I hadn't thought of that — though I suppose thinking of it rather proves your point, doesn't it? I only try to work things out carefully, one step at a time, because I'm so afraid of getting them wrong. Perhaps that's what worrying does when you have no brains to stop it. Still, I should feel ever so much better with some proper ones inside my head.",
                chatId: ChatIDs.scarecrow,
                characterId: ChatCharacterIDs.scarecrow,
                date: date(2026, 7, 2, 11, 36)
            ),
        ]
    )

    // MARK: - Convenience Lookups

    /// All chats for a given character.
    static func chats(withCharacter characterID: CharacterID) -> [Chat] {
        chats.filter { $0.characterId == characterID }
    }

    /// Chats sorted most-recently-modified first (as a chat list would show).
    static var chatsByRecency: [Chat] {
        chats.sorted { $0.dateModified > $1.dateModified }
    }

    // MARK: - Message Builders

    private static func userMessage(
        _ content: String,
        chatId: ChatID,
        date: Date
    ) -> ChatMessage {
        ChatMessage(
            id: MessageID(),
            chatId: chatId,
            authorId: demoUserId,
            seenByIds: [demoUserId],
            role: .user,
            dateCreated: date,
            content: content
        )
    }

    private static func characterMessage(
        _ content: String,
        chatId: ChatID,
        characterId: CharacterID,
        date: Date
    ) -> ChatMessage {
        ChatMessage(
            id: MessageID(),
            chatId: chatId,
            // Traceable author id derived from the character. Swap for a shared
            // assistant id if your app models it that way.
            authorId: UserID(rawValue: "character.\(characterId.rawValue)"),
            seenByIds: [demoUserId],
            role: .character,
            dateCreated: date,
            content: content
        )
    }

    // MARK: - Date Helper

    private static func date(
        _ year: Int, _ month: Int, _ day: Int,
        _ hour: Int = 12, _ minute: Int = 0
    ) -> Date {
        var components = DateComponents()
        components.year = year
        components.month = month
        components.day = day
        components.hour = hour
        components.minute = minute
        return Calendar.current.date(from: components) ?? Date()
    }
}
