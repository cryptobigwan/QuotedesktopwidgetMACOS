import Foundation

struct Quote {
    let text: String
    let source: String
}

enum Quotes {
    // Original / generic lines — free to edit, add, or replace with your own.
    static let all: [Quote] = [
        Quote(text: "Your time is limited, so don't waste it living someone else's life.", source: "Steve Jobs"),
                Quote(text: "The only way to do great work is to love what you do.", source: "Steve Jobs"),
                Quote(text: "Innovation distinguishes between a leader and a follower.", source: "Steve Jobs"),
                Quote(text: "Seek wealth, not money or status. Wealth is having assets that earn while you sleep.", source: "Naval Ravikant"),
                Quote(text: "All the returns in life, whether in wealth, relationships, or knowledge, come from compound interest.", source: "Naval Ravikant"),
                Quote(text: "A fit body, a calm mind, a house full of love. These things cannot be bought - they must be earned.", source: "Naval Ravikant"),
                Quote(text: "Imagination is more important than knowledge. Knowledge is limited. Imagination encircles the world.", source: "Albert Einstein"),
                Quote(text: "The important thing is not to stop questioning. Curiosity has its own reason for existing.", source: "Albert Einstein"),
                Quote(text: "The first principle is that you must not fool yourself and you are the easiest person to fool.", source: "Richard Feynman"),
                Quote(text: "If you can't explain it to a six-year-old, you don't understand it yourself.", source: "Richard Feynman"),
                Quote(text: "You have power over your mind - not outside events. Realize this, and you will find strength.", source: "Marcus Aurelius"),
                Quote(text: "The happiness of your life depends upon the quality of your thoughts.", source: "Marcus Aurelius"),
                Quote(text: "It is not that we have a short time to live, but that we waste a lot of it.", source: "Seneca"),
                Quote(text: "Luck is what happens when preparation meets opportunity.", source: "Seneca"),
                Quote(text: "We suffer more often in imagination than in reality.", source: "Seneca"),
                Quote(text: "He who has a why to live can bear almost any how.", source: "Friedrich Nietzsche"),
                Quote(text: "Formula for greatness in a human being is amor fati: that one wants nothing to be different, not forward, not backward, not in all eternity.", source: "Friedrich Nietzsche"),
                Quote(text: "We are what we repeatedly do. Excellence, then, is not an act, but a habit.", source: "Aristotle"),
                Quote(text: "The measure of a man is what he does with power.", source: "Plato"),
                Quote(text: "If you want to find the secrets of the universe, think in terms of energy, frequency and vibration.", source: "Nikola Tesla"),
                Quote(text: "I think a life lived for art is a life lived to the full, and to this I have devoted mine.", source: "Luciano Pavarotti"),
                Quote(text: "Above all else, guard your heart, for everything you do flows from it.", source: "The Bible (Proverbs)"),
                Quote(text: "Fall seven times, stand up eight.", source: "Japanese Proverb"),
                Quote(text: "The bamboo that bends is stronger than the oak that resists.", source: "Japanese Proverb"),
                Quote(text: "If you speak, let your words be better than silence.", source: "Arabic Proverb"),
                Quote(text: "What is learned in youth is carved in stone.", source: "Arabic Proverb"),
                Quote(text: "Success is not final, failure is not fatal: it is the courage to continue that counts.", source: "Winston Churchill"),
                Quote(text: "Whenever you find yourself on the side of the majority, it is time to reform.", source: "Mark Twain"),
                Quote(text: "I've learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel.", source: "Maya Angelou"),
                Quote(text: "Be yourself; everyone else is already taken.", source: "Oscar Wilde"),
                Quote(text: "Stay hungry, stay foolish.", source: "Steve Jobs"),
                Quote(text: "If you cannot decide, the answer is no.", source: "Naval Ravikant"),
                Quote(text: "Waste no more time arguing about what a good man should be. Be one.", source: "Marcus Aurelius"),
                Quote(text: "True happiness is to enjoy the present, without anxious dependence upon the future.", source: "Seneca"),
                Quote(text: "That which does not kill us makes us stronger.", source: "Friedrich Nietzsche"),
                Quote(text: "Be alone, that is the secret of invention; be alone, that is when ideas are born.", source: "Nikola Tesla"),
                Quote(text: "Beginning is easy, continuing is hard.", source: "Japanese Proverb"),
                Quote(text: "If you are going through hell, keep going.", source: "Winston Churchill"),
                Quote(text: "We are all in the gutter, but some of us are looking at the stars.", source: "Oscar Wilde"),
                Quote(text: "The secret of getting ahead is getting started.", source: "Mark Twain"),
    ]

    static func random() -> Quote {
        all.randomElement()!
    }
}

