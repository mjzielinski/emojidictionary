//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Michael Zielinski on 3/21/17.
//  Copyright © 2017 Worldengine. All rights reserved.
//

// create a class for Emoji object
class Emoji {
    var icon = ""
    var title = ""
    var description = ""
    init (icon: String, title: String, description: String) {
        self.icon = icon
        self.title = title
        self.description = description
    }
}

// function to create an array of Emoji objects
func makeEmojiArray() -> [Emoji] {
    let emoji1 = Emoji(icon: "😀", title: "Smiley", description: "A smiling face")
    let emoji2 = Emoji(icon: "😂", title: "Cry Laughing", description: "Laughing so hard you cry")
    let emoji3 = Emoji(icon: "😅", title: "Relief", description: "Sweating in relief")
    let emoji4 = Emoji(icon: "😎", title: "Shades", description: "Cool sunglasses")
    let emoji5 = Emoji(icon: "🤐", title: "Zipped", description: "Mouth zippered shut")
    let emoji6 = Emoji(icon: "👽", title: "Alien", description: "The alien face")
    let emoji7 = Emoji(icon: "🤖", title: "Robot", description: "The robot face")
    let emoji8 = Emoji(icon: "💩", title: "Poop", description: "Jason's favorite emoji")
    return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8]
}
