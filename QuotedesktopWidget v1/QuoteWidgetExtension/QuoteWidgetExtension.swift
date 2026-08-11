import WidgetKit
import SwiftUI
import AppIntents

struct QuoteWidgetEntryView: View {
    var entry: Provider.Entry

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text(entry.quote)
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(.white)
                .fixedSize(horizontal: false, vertical: true)
                .lineSpacing(3)

            Spacer(minLength: 0)

            HStack(alignment: .bottom) {
                Text("— \(entry.source)")
                    .font(.system(size: 12, weight: .regular))
                    .italic()
                    .foregroundColor(.white.opacity(0.55))

                Spacer()

                Button(intent: RefreshQuoteIntent()) {
                    Image(systemName: "arrow.clockwise")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundColor(.white.opacity(0.7))
                        .padding(8)
                        .background(Circle().fill(Color.white.opacity(0.12)))
                }
                .buttonStyle(.plain)
            }
        }
        .padding(18)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .containerBackground(for: .widget) {
            Color.black.opacity(0.15)
        }
        }        }


struct QuoteWidget: Widget {
    let kind: String = "QuoteWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            QuoteWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Daily Quote")
        .description("Shows a quote — tap the refresh icon for a new one.")
        .supportedFamilies([.systemMedium, .systemLarge])
    }
}
