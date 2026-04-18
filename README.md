# chrome-vtab-toggle

AutoHotkey v2 script that maps `Ctrl+Alt+Z` to a fixed click near the top-left of the active Chrome window, intended to hit the vertical-tab pane's **collapse / expand** button.

## Usage

1. Install AutoHotkey v2.
2. Run `chrome-vtab-toggle.ahk`.
3. While Google Chrome is active, press `Ctrl+Alt+Z`.

## Notes

- The hotkey is only active for `chrome.exe`.
- Clicks the active Chrome window at an offset of `40,30` from the window's top-left corner.
- The mouse cursor is restored to its previous position immediately after the click.
- This is intentionally simple and fragile: window decorations, DPI scaling, Chrome UI changes, or different button placement may require adjusting the offsets.
