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

  @override
  String get forbiddenError =>
      'You do not have permission to perform this action.';

  @override
  String get unauthorizedError =>
      'Your session may have expired. Please try signing in again.';

  @override
  String get notFoundError => 'The requested item could not be found.';

  @override
  String get authenticationError =>
      'Authentication failed. Please check your credentials.';

  @override
  String get badRequestError => 'There was a problem with your request.';

  @override
  String get invalidInputError =>
      'The information provided is invalid. Please check and try again.';

  @override
  String get retryButtonText => 'Retry';
}
