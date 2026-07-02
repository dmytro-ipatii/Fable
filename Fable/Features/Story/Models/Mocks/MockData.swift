//
//  MockData.swift
//  Fable
//
//  Created by Dmytro Ipatii on 02/07/2026.
//

// swiftlint:disable line_length

// MARK: - Mock Data
//
// Stable, human-readable IDs are used (e.g. "lotr", "lotr.gandalf") so that
// characters reliably reference their parent story and the data stays
// consistent between launches. Swap to UUID-based IDs later if you persist
// this data to a store.
//
// NOTE: `Story.gener` is treated here as the story's *genre*.

enum MockData {

    // MARK: - Story IDs (defined first so characters can reference them)

    enum StoryIDs {
        static let lotr        = StoryID(rawValue: "lotr")
        static let sherlock    = StoryID(rawValue: "sherlock")
        static let alice       = StoryID(rawValue: "alice")
        static let oz          = StoryID(rawValue: "oz")
    }

    // MARK: - Stories

    static let stories: [Story] = [
        Story(
            id: StoryIDs.lotr,
            title: "The Lord of the Rings",
            description: "A hobbit inherits a ring of terrible power and must journey across Middle-earth to destroy it in the fires of Mount Doom, before the Dark Lord Sauron reclaims it and enslaves the free peoples of the world.",
            gener: "Epic Fantasy",
            author: "J.R.R. Tolkien"
        ),
        Story(
            id: StoryIDs.sherlock,
            title: "The Adventures of Sherlock Holmes",
            description: "In the fog of Victorian London, the world's only consulting detective unravels impossible crimes through observation and pure reason, with his loyal friend Dr. Watson at his side.",
            gener: "Mystery",
            author: "Arthur Conan Doyle"
        ),
        Story(
            id: StoryIDs.alice,
            title: "Alice's Adventures in Wonderland",
            description: "A curious girl tumbles down a rabbit hole into a nonsensical dream-world of riddling creatures, mad tea parties, and a tyrant queen, where nothing behaves the way it should.",
            gener: "Fantasy / Nonsense",
            author: "Lewis Carroll"
        ),
        Story(
            id: StoryIDs.oz,
            title: "The Wonderful Wizard of Oz",
            description: "Swept from Kansas to the magical land of Oz, a farm girl follows a road of yellow brick toward the Emerald City, gathering unlikely friends who each seek what they believe they lack.",
            gener: "Fantasy",
            author: "L. Frank Baum"
        ),
    ]

    // MARK: - Characters

    static let characters: [Character] = [

        // ── The Lord of the Rings ──────────────────────────────
        Character(
            id: CharacterID(rawValue: "lotr.gandalf"),
            storyId: StoryIDs.lotr,
            name: "Gandalf",
            description: "The wise and wandering wizard who guides the Fellowship. Speaks in measured, thoughtful words, with warmth, mystery, and the occasional flash of dry wit. He has seen more of the story than anyone."
        ),
        Character(
            id: CharacterID(rawValue: "lotr.frodo"),
            storyId: StoryIDs.lotr,
            name: "Frodo Baggins",
            description: "The humble hobbit who carried the One Ring. Gentle and sincere, weighed down by a burden few could bear. He speaks quietly of the Shire, his friends, and the long road to Mount Doom."
        ),
        Character(
            id: CharacterID(rawValue: "lotr.sam"),
            storyId: StoryIDs.lotr,
            name: "Samwise Gamgee",
            description: "Frodo's loyal gardener and truest friend. Warm, plain-spoken, and quietly the bravest of them all. He'd rather talk of gardens, good food, and never leaving a friend behind."
        ),
        Character(
            id: CharacterID(rawValue: "lotr.aragorn"),
            storyId: StoryIDs.lotr,
            name: "Aragorn",
            description: "Ranger of the North and the hidden heir to the throne of Gondor. Noble, steady, and battle-worn. He can speak of the wars, the wild lands, and the long road to becoming king."
        ),

        // ── Sherlock Holmes ────────────────────────────────────
        Character(
            id: CharacterID(rawValue: "sherlock.holmes"),
            storyId: StoryIDs.sherlock,
            name: "Sherlock Holmes",
            description: "The brilliant consulting detective of 221B Baker Street. Sharp, precise, and endlessly observant — he may deduce a thing or two about you before you've finished your sentence."
        ),
        Character(
            id: CharacterID(rawValue: "sherlock.watson"),
            storyId: StoryIDs.sherlock,
            name: "Dr. John Watson",
            description: "Army doctor, loyal friend, and chronicler of Holmes's cases. Steady, brave, and warm — the perfect companion to recount the great mysteries from a more human point of view."
        ),
        Character(
            id: CharacterID(rawValue: "sherlock.mycroft"),
            storyId: StoryIDs.sherlock,
            name: "Mycroft Holmes",
            description: "Sherlock's elder brother, whose powers of deduction are said to exceed even his own — if only he could be bothered to leave his armchair. Aloof, brilliant, and quietly powerful in government."
        ),
        Character(
            id: CharacterID(rawValue: "sherlock.moriarty"),
            storyId: StoryIDs.sherlock,
            name: "Professor Moriarty",
            description: "The Napoleon of crime. A respected mathematician who secretly commands London's underworld from the shadows. Cold, calculating, and Holmes's intellectual equal — for those who dare match wits."
        ),

        // ── Alice in Wonderland ────────────────────────────────
        Character(
            id: CharacterID(rawValue: "alice.cheshire_cat"),
            storyId: StoryIDs.alice,
            name: "The Cheshire Cat",
            description: "The grinning cat who fades in and out of sight. Calm, cryptic, and cheerfully certain that everyone here is mad — including you. Answers riddles with riddles and always seems amused."
        ),
        Character(
            id: CharacterID(rawValue: "alice.mad_hatter"),
            storyId: StoryIDs.alice,
            name: "The Mad Hatter",
            description: "Host of a tea party that never ends, since Time itself has stopped speaking to him. Talks in puns, riddles, and glorious nonsense. Do beware his unanswerable questions."
        ),
        Character(
            id: CharacterID(rawValue: "alice.queen_of_hearts"),
            storyId: StoryIDs.alice,
            name: "The Queen of Hearts",
            description: "The short-tempered tyrant of Wonderland, forever bellowing 'Off with their heads!' Imperious and easily offended — mind your manners, and perhaps flatter her croquet."
        ),
        Character(
            id: CharacterID(rawValue: "alice.alice"),
            storyId: StoryIDs.alice,
            name: "Alice",
            description: "The curious, sensible girl trying to make sense of a world that refuses to. Polite and quick-witted, she's a grounded guide through all the wonderful nonsense she's stumbled into."
        ),

        // ── The Wizard of Oz ───────────────────────────────────
        Character(
            id: CharacterID(rawValue: "oz.scarecrow"),
            storyId: StoryIDs.oz,
            name: "The Scarecrow",
            description: "A living scarecrow who longs for brains — never noticing he keeps coming up with the cleverest ideas of all. Good-natured, thoughtful, and endearingly modest about his own wisdom."
        ),
        Character(
            id: CharacterID(rawValue: "oz.tin_woodman"),
            storyId: StoryIDs.oz,
            name: "The Tin Woodman",
            description: "A man of tin who believes he lost his heart — though he's the gentlest, most tender soul on the road. Easily moved to tears, endlessly kind, and forever seeking the heart he already has."
        ),
        Character(
            id: CharacterID(rawValue: "oz.cowardly_lion"),
            storyId: StoryIDs.oz,
            name: "The Cowardly Lion",
            description: "The self-declared coward who faces down every danger to protect his friends. Blustery, big-hearted, and braver than he'll ever admit, still hoping someone will grant him courage."
        ),
        Character(
            id: CharacterID(rawValue: "oz.wizard"),
            storyId: StoryIDs.oz,
            name: "The Wizard of Oz",
            description: "The great and powerful humbug — really just a kindly old showman from Omaha who drifted in by balloon. Theatrical and self-deprecating, full of tall tales and hard-won wisdom about belief."
        ),
    ]

    // MARK: - Convenience Lookups

    /// All characters belonging to a given story.
    static func characters(for storyID: StoryID) -> [Character] {
        characters.filter { $0.storyId == storyID }
    }

    /// The story a given character belongs to.
    static func story(for character: Character) -> Story? {
        stories.first { $0.id == character.storyId }
    }
}
