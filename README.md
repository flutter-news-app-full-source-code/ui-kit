<div align="center">
  <img src="https://avatars.githubusercontent.com/u/202675624?s=400&u=dc72a2b53e8158956a3b672f8e52e39394b6b610&v=4" alt="Flutter News App Toolkit Logo" width="220">
  <h1>UI Kit</h1>
  <p><strong>A shared Flutter UI kit providing a consistent set of widgets, themes, constants, and utilities for the Flutter News App Toolkit.</strong></p>
</div>

<p align="center">
  <img src="https://img.shields.io/badge/coverage-24%25-green?style=for-the-badge" alt="coverage">
  <a href="https://flutter-news-app-full-source-code.github.io/docs/"><img src="https://img.shields.io/badge/LIVE_DOCS-VIEW-slategray?style=for-the-badge" alt="Live Docs: View"></a>
  <a href="https://github.com/flutter-news-app-full-source-code"><img src="https://img.shields.io/badge/MAIN_PROJECT-BROWSE-purple?style=for-the-badge" alt="Main Project: Browse"></a>
</p>

This `ui_kit` package serves as a shared Flutter UI kit within the [**Flutter News App Full Source Code Toolkit**](https://github.com/flutter-news-app-full-source-code). It provides a consistent set of widgets, themes, constants, and utilities designed to ensure a cohesive look and feel across the Flutter mobile app and web dashboard. By centralizing UI components and styling, this package aims to accelerate development and enhance maintainability.

## ⭐ Feature Showcase: Consistent & Dynamic User Interfaces

This package offers a comprehensive set of features for building modern Flutter UIs.

<details>
<summary><strong>🧱 Core Functionality</strong></summary>

### 🚀 State Widgets
- **`InitialStateWidget`:** A pre-built widget for displaying initial states, typically before user interaction or data loading.
- **`LoadingStateWidget`:** A widget for indicating progress during data fetching or other asynchronous operations.
- **`FailureStateWidget`:** A robust widget for showing user-friendly, localized error messages with an optional retry mechanism, leveraging `HttpException` extensions from `core`.

### 🎨 Dynamic Theming
- **`lightTheme` & `darkTheme` Functions:** Built with `flex_color_scheme`, these functions provide dynamic, customizable, and consistent light/dark themes across the app based on user settings (e.g., `AppBaseTheme`, `AppAccentTheme`, `AppTextScaleFactor`, `AppFontWeight`).
- **`AppSpacing` Constants:** Centralized constants for spacing to ensure consistent layouts and visual hierarchy.

### 🌐 Localization Helpers
- **`HttpException` Extension:** An extension on `HttpException` (from `core`) to provide user-friendly, localized error messages, simplifying error presentation.
- **`timeago` Integration:** Custom `timeago` messages for concise relative time formatting, enhancing readability of timestamps.

### 🛠️ Utilities
- **`DateFormatter`:** Helper class for common date and time formatting tasks, ensuring consistent date representations throughout the application.

> **💡 Your Advantage:** This UI kit simplifies Flutter development by providing visual consistency, dynamic theming, and robust error presentation. It centralizes UI components, contributing to faster development and improved maintainability.

</details>

## 🔑 Licensing

This `ui_kit` package is an integral part of the [**Flutter News App Full Source Code Toolkit**](https://github.com/flutter-news-app-full-source-code). For comprehensive details regarding licensing, including trial and commercial options for the entire toolkit, please refer to the main toolkit organization page.
