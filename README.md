# ui_kit

![coverage: percentage](https://img.shields.io/badge/coverage-24-green)
[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)
[![License: PolyForm Free Trial](https://img.shields.io/badge/License-PolyForm%20Free%20Trial-blue)](https://polyformproject.org/licenses/free-trial/1.0.0)

A shared Flutter UI kit package providing a consistent set of widgets, themes, constants, and utilities for building applications. This package ensures a cohesive look and feel across different parts of the system.

## Getting Started

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  ui_kit:
    git:
      url: https://github.com/flutter-news-app-full-source-code/ui-kit.git
```

## Features

*   **State Widgets:** A collection of pre-built widgets for common UI states:
    *   `InitialStateWidget`: For screens before user interaction.
    *   `LoadingStateWidget`: For displaying progress during data fetching.
    *   `FailureStateWidget`: For showing user-friendly error messages with a retry option.
*   **Dynamic Theming:** Built with `flex_color_scheme`, allowing for dynamic, customizable, and consistent light/dark themes across the app based on user settings.
*   **Localization Helpers:**
    *   An extension on `HttpException` to provide user-friendly, localized error messages.
    *   Custom `timeago` messages for concise relative time formatting.
*   **Shared Constants:** Centralized constants for spacing (`AppSpacing`) to ensure consistent layouts.
*   **Utilities:** Helper classes like `DateFormatter` for common date and time formatting tasks.

## Usage

### Displaying an Error

Use the `FailureStateWidget` to easily display a localized error message from a shared exception. The widget automatically handles localization.

```dart
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:ui_kit/ui_kit.dart';

class MyFeatureView extends StatelessWidget {
  const MyFeatureView({super.key});

  @override
  Widget build(BuildContext context) {
    return FailureStateWidget(
      exception: NetworkException(),
      onRetry: () {
        // Logic to retry the failed operation
        print('Retrying...');
      },
    );
  }
}
```

### Theming

This package provides `lightTheme` and `darkTheme` functions that can be dynamically configured. To use them, pass them to your `MaterialApp`'s theme properties.

```dart
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:core/core.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // These values would typically come from a state management solution
    const activeScheme = FlexScheme.mandyRed;
    const textScaleFactor = AppTextScaleFactor.medium;
    const fontWeight = AppFontWeight.regular;

    return MaterialApp(
      theme: lightTheme(
        scheme: activeScheme,
        appTextScaleFactor: textScaleFactor,
        appFontWeight: fontWeight,
      ),
      // ... other properties
    );
  }
}
```


## 🔑 Licensing

This package is source-available and licensed under the [PolyForm Free Trial 1.0.0](LICENSE). Please review the terms before use.

For commercial licensing options that grant the right to build and distribute unlimited applications, please visit the main [**Flutter News App - Full Source Code Toolkit**](https://github.com/flutter-news-app-full-source-code) organization.
