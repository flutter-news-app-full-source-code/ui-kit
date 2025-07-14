// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class HtUiKitLocalizationsEn extends HtUiKitLocalizations {
  HtUiKitLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get networkError => 'Please check your internet connection.';

  @override
  String get serverError => 'A server error occurred. Please try again later.';

  @override
  String get unknownError => 'An unknown error occurred.';

  @override
  String get operationFailedError => 'The operation could not be completed.';
}
