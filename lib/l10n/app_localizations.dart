import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of HtUiKitLocalizations
/// returned by `HtUiKitLocalizations.of(context)`.
///
/// Applications need to include `HtUiKitLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: HtUiKitLocalizations.localizationsDelegates,
///   supportedLocales: HtUiKitLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the HtUiKitLocalizations.supportedLocales
/// property.
abstract class HtUiKitLocalizations {
  HtUiKitLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static HtUiKitLocalizations? of(BuildContext context) {
    return Localizations.of<HtUiKitLocalizations>(
      context,
      HtUiKitLocalizations,
    );
  }

  static const LocalizationsDelegate<HtUiKitLocalizations> delegate =
      _HtUiKitLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// Error message shown when there is a network connectivity issue.
  ///
  /// In en, this message translates to:
  /// **'Please check your internet connection.'**
  String get networkError;

  /// Error message for 5xx server errors.
  ///
  /// In en, this message translates to:
  /// **'A server error occurred. Please try again later.'**
  String get serverError;

  /// A generic fallback error message.
  ///
  /// In en, this message translates to:
  /// **'An unknown error occurred.'**
  String get unknownError;

  /// Error message for a generic operation failure.
  ///
  /// In en, this message translates to:
  /// **'The operation could not be completed.'**
  String get operationFailedError;

  /// Error message for 403 Forbidden errors.
  ///
  /// In en, this message translates to:
  /// **'You do not have permission to perform this action.'**
  String get forbiddenError;

  /// Error message for 401 Unauthorized errors.
  ///
  /// In en, this message translates to:
  /// **'Your session may have expired. Please try signing in again.'**
  String get unauthorizedError;

  /// Error message for 404 Not Found errors.
  ///
  /// In en, this message translates to:
  /// **'The requested item could not be found.'**
  String get notFoundError;

  /// Error message for a generic authentication failure.
  ///
  /// In en, this message translates to:
  /// **'Authentication failed. Please check your credentials.'**
  String get authenticationError;

  /// Error message for a generic 400 Bad Request error.
  ///
  /// In en, this message translates to:
  /// **'There was a problem with your request.'**
  String get badRequestError;

  /// Error message for a generic invalid input error.
  ///
  /// In en, this message translates to:
  /// **'The information provided is invalid. Please check and try again.'**
  String get invalidInputError;

  /// Text for the retry button on error widgets.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retryButtonText;
}

/// A convenient extension to access the localizations from the build context.
extension HtUiKitLocalizationsX on BuildContext {
  /// The HtUiKit localizations.
  HtUiKitLocalizations get l10n => HtUiKitLocalizations.of(this)!;
}

class _HtUiKitLocalizationsDelegate
    extends LocalizationsDelegate<HtUiKitLocalizations> {
  const _HtUiKitLocalizationsDelegate();

  @override
  Future<HtUiKitLocalizations> load(Locale locale) {
    return SynchronousFuture<HtUiKitLocalizations>(
      lookupHtUiKitLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_HtUiKitLocalizationsDelegate old) => false;
}

HtUiKitLocalizations lookupHtUiKitLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return HtUiKitLocalizationsAr();
    case 'en':
      return HtUiKitLocalizationsEn();
  }

  throw FlutterError(
    'HtUiKitLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
