# ht_ui_kit

![coverage: 0%](https://img.shields.io/badge/coverage-94-green)
[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)
[![License: PolyForm Free Trial](https://img.shields.io/badge/License-PolyForm%20Free%20Trial-blue)](https://polyformproject.org/licenses/free-trial/1.0.0)

A shared UI kit for the Headlines Toolkit Flutter applications, providing reusable widgets, themes, and localization helpers.

## Getting Started

To use this package, add `ht_ui_kit` as a dependency in your `pubspec.yaml` file. Since this is a private package, you'll need to reference it via its Git repository.

```yaml
dependencies:
  ht_ui_kit:
    git:
      url: https://github.com/headlines-toolkit/ht-ui-kit.git
```

## Features

- **Localized Exception Handling:** A helper extension on `HtHttpException` to provide user-friendly, localized error messages.
- **Shared Localizations:** Provides localizations for common strings (currently error messages) in multiple languages (English and Arabic).

## Usage

### 1. Integrating Localizations

To use the localizations provided by this package, you must add its delegate to your `MaterialApp`.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ht_ui_kit/ht_ui_kit.dart'; // Import the package
// Import your app's own localizations
import 'package/your_app/l10n/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ... other properties
      localizationsDelegates: const [
        // Add the UI Kit's delegate
        HtUiKitLocalizations.delegate,

        // Keep your app's delegates
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: HtUiKitLocalizations.supportedLocales,
      // ...
    );
  }
}
```

### 2. Displaying Friendly Error Messages

Once the localizations are integrated, you can use the `toFriendlyMessage` extension method on any `HtHttpException` instance to get a localized error string. This is ideal for displaying errors in the UI.

```dart
import 'package:flutter/material.dart';
import 'package:ht_shared/ht_shared.dart';
import 'package:ht_ui_kit/ht_ui_kit.dart'; // Provides the extension

class ErrorDisplayWidget extends StatelessWidget {
  const ErrorDisplayWidget({required this.exception, super.key});

  final HtHttpException exception;

  @override
  Widget build(BuildContext context) {
    // The toFriendlyMessage method requires the BuildContext
    // to find the correct localizations.
    final friendlyMessage = exception.toFriendlyMessage(context);

    return Center(child: Text(friendlyMessage));
  }
}
```

## License

This package is licensed under the [PolyForm Free Trial](LICENSE). Please review the terms before use.