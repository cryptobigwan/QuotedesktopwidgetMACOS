import WidgetKit
import SwiftUI

struct QuoteEntry: TimelineEntry {
    let date: Date
    let quote: String
    let source: String
}

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> QuoteEntry {
        let q = Quotes.all[0]
        return QuoteEntry(date: Date(), quote: q.text, source: q.source)
    }

    func getSnapshot(in context: Context, completion: @escaping (QuoteEntry) -> Void) {
        let q = Quotes.random()
        completion(QuoteEntry(date: Date(), quote: q.text, source: q.source))
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<QuoteEntry>) -> Void) {
        let q = Quotes.random()
        let entry = QuoteEntry(date: Date(), quote: q.text, source: q.source)
        // .never = no automatic rotation. It only updates when our refresh
        // button calls WidgetCenter.shared.reloadTimelines(...)
        let timeline = Timeline(entries: [entry], policy: .never)
        completion(timeline)
    }
}
