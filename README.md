# Word Translator 2.0 · 单词小标

Hover over a word anywhere on your screen and see its translation beside it.

把鼠标停在屏幕上的单词旁边，翻译会自动显示在原文附近。

**Live website / 下载网站:** https://wordbubble-mac-download.wonder07090518.chatgpt.site

## What is new in 2.0 / 2.0 新功能

- Setup window shown on launch: choose automatic detection or a manual language pair, then confirm.
- The settings window can be closed or minimized while translation continues in the menu bar or system tray.
- Automatic direction: Chinese → English; supported non-Chinese languages → Chinese.
- Manual selection for Chinese, English, Japanese, Korean, Russian, French, German, and Spanish.
- Adjustable hover delay and quick pause/resume.
- Native macOS app and portable Windows app.

## Repository layout / 项目结构

- `apps/macos` — SwiftUI, ScreenCaptureKit, Vision, NaturalLanguage and Apple Translation.
- `apps/windows` — Electron, Tesseract.js and online text translation.
- `website` — bilingual Next.js/Vinext download site.

## Build the macOS app

Requirements: Apple Silicon Mac, macOS 15.2+, Xcode command-line tools.

```sh
cd apps/macos
./build-app.sh
```

The app bundle is written to `apps/macos/dist/单词小标.app`.

## Build the Windows app

Requirements: Node.js 22+ and npm. Cross-building the portable x64 executable from macOS is supported by electron-builder.

```sh
cd apps/windows
npm install
npm run check
npm run dist:win
```

## Run the website

```sh
cd website
npm install
npm run dev
```

## Privacy / 隐私

Screen images are processed only for nearby OCR and are not saved. The Windows version sends only the short recognized text to an online translation service. The macOS version uses Apple system translation.

屏幕截图只用于鼠标附近的即时识字，不会保存。Windows 版只发送识别出的短文字进行在线翻译；Mac 版使用 Apple 系统翻译。

## Current limitations / 当前限制

- The downloadable preview builds are unsigned. macOS and Windows may display a security warning.
- The Windows executable is cross-built and still needs final screen-capture verification on a physical Windows 10/11 computer.
- Screen recording permission is required for on-screen OCR.

## License

MIT
