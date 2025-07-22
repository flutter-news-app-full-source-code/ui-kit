import 'package:flutter/widgets.dart';
import 'package:ui_kit/l10n/app_localizations.dart';

/// A convenient extension to access the UI Kit's localized strings.
extension UiKitL10n on BuildContext {
  /// Returns the localized strings for the UI Kit.
  UiKitLocalizations get l10n => UiKitLocalizations.of(this)!;
}
