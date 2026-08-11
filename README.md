# Native macOS Desktop Quote Widget — Setup Guide

This gives you a real WidgetKit widget: it shows up in the system widget
gallery (right-click Desktop → Edit Widgets) exactly like the Calendar,
Weather, and Bible-verse widgets in your screenshot, including native
vibrancy/blur.

Requires: a Mac with **Xcode** installed (free from the App Store), and
a free Apple ID signed into Xcode (no paid developer account needed for
local personal use).

## 1. Create the host app

1. Open Xcode → **File > New > Project**
2. Choose **macOS > App** → Next
3. Product Name: `QuoteDesktopWidget`
   Interface: SwiftUI, Language: Swift
4. Save it anywhere (e.g. Desktop). This app is just a "carrier" — the
   widget can't exist without a parent app, but you'll barely touch this
   app's own code.

## 2. Add the Widget Extension target

1. **File > New > Target…**
2. Search for **Widget Extension**, select it → Next
3. Product Name: `QuoteWidgetExtension`
4. **Uncheck** "Include Configuration Intent" (we don't need a
   user-configurable intent — this widget just rotates quotes on its own)
5. Click Finish, then click **Activate** when Xcode asks about the new
   scheme.

Xcode will generate a folder `QuoteWidgetExtension/` with some starter
Swift files (something like `QuoteWidgetExtension.swift`,
`QuoteWidgetExtensionBundle.swift`, etc.) — **delete their contents** (or
delete the files, keeping the folder/group) and replace with the three
files below.

## 3. Add these files to the QuoteWidgetExtension target

Copy these three files into the `QuoteWidgetExtension` group in Xcode
(drag them in, or create new Swift files with these exact names and
paste the contents). **Important**: when adding, make sure the
**Target Membership** checkbox for `QuoteWidgetExtension` is checked
(and the main app target is unchecked) in the File Inspector.

- `Quotes.swift` — the list of quotes
- `Provider.swift` — the timeline provider (controls rotation/refresh)
- `QuoteWidget.swift` — the SwiftUI view + Widget + `@main` WidgetBundle

(All three are included alongside this README.)

## 4. Build & run

1. At the top of Xcode, select the **QuoteWidgetExtension** scheme
   (not the app scheme) and pick "My Mac" as the destination.
2. Press ▶ Run. Xcode will build the extension and launch a small
   widget preview/host.
3. Now also select the **QuoteDesktopWidget** (app) scheme and Run it
   once too — this registers the widget with macOS system-wide.

## 5. Add it to your desktop

1. Right-click your Desktop → **Edit Widgets…** (or open Notification
   Center → click "Edit Widgets" at the bottom)
2. Scroll the sidebar to find **QuoteDesktopWidget** → you'll see
   "Daily Quote" in Medium and Large sizes
3. Drag it onto the desktop, resize as you like.

## 6. Make it stick around permanently

Widgets only keep updating if their parent app still exists on disk.
For a widget you'll use long-term:

1. In Xcode: **Product > Archive** (or just Build in Release mode)
2. Move `QuoteDesktopWidget.app` into `/Applications`
3. The widget on your desktop keeps working even if Xcode is closed —
   it's driven by the OS on the schedule defined in `Provider.swift`
   (currently: a new random quote every hour, for the next 24 hours,
   refreshing that batch daily).

## Customizing

- **Change the quotes**: edit the `Quotes.all` array in `Quotes.swift`.
- **Change rotation frequency**: edit the `hourOffset` loop and
  `refreshDate` in `Provider.swift` (e.g. every 30 minutes instead of
  hourly — note iOS/macOS budgets widget refreshes, so very frequent
  updates may get throttled by the system).
- **Change the look**: edit `QuoteWidgetEntryView` in `QuoteWidget.swift`
  — font, padding, background color/opacity, text color, etc.
- **Widget sizes**: `.supportedFamilies([.systemMedium, .systemLarge])`
  controls which sizes appear in the widget gallery; add `.systemSmall`
  if you want a compact version too (you'll want a shorter layout for
  that size).
