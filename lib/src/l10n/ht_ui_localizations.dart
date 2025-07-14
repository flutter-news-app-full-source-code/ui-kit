import 'package:flutter/widgets.dart';

/// An abstract class that defines the localizable strings for the ht_ui_kit.
///
/// Packages that use ht_ui_kit and want to provide their own translations
/// can implement this class.
abstract class HtUiLocalizations {
  /// A message for a generic network error.
  String get networkError;

  /// A message for a generic server error.
  String get serverError;

  /// A message for an unknown or unexpected error.
  String get unknownError;

  /// A message for a generic operation failure.
  String get operationFailedError;

  /// Retrieves the [HtUiLocalizations] instance from the given [context].
  static HtUiLocalizations of(BuildContext context) {
    return Localizations.of<HtUiLocalizations>(context, HtUiLocalizations)!;
  }
}

/// The English implementation of [HtUiLocalizations].
class HtUiLocalizationsEn implements HtUiLocalizations {
  /// A const constructor to allow for const instances.
  const HtUiLocalizationsEn();

  @override
  String get networkError => 'Please check your internet connection.';

  @override
  String get serverError => 'A server error occurred. Please try again later.';

  @override
  String get unknownError => 'An unknown error occurred.';

  @override
  String get operationFailedError => 'The operation could not be completed.';
}

/// The delegate for [HtUiLocalizations].
///
/// The consuming app should add this to its `localizationsDelegates` list.
class HtUiLocalizationsDelegate
    extends LocalizationsDelegate<HtUiLocalizations> {
  /// A const constructor.
  const HtUiLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'en';

  @override
  Future<HtUiLocalizations> load(Locale locale) async {
    // For now, only English is supported directly in the package.
    // Other languages would be loaded here.
    return const HtUiLocalizationsEn();
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<HtUiLocalizations> old) =>
      false;

  /// A static instance of the delegate.
  static const delegate = HtUiLocalizationsDelegate();
}
