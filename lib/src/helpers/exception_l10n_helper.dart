import 'package:ht_shared/ht_shared.dart';

/// An extension to provide a user-friendly message from an [HtHttpException].
extension HtHttpExceptionL10n on HtHttpException {
  /// Returns a user-friendly message for the exception.
  ///
  /// For most exceptions, this is the specific message provided by the server
  /// or a client-side check. For generic exceptions like [NetworkException],
  /// it returns a standard English message.
  ///
  /// The consuming application is responsible for any further localization
  /// of these generic messages if required.
  String toFriendlyMessage() {
    if (this is NetworkException) {
      // This is a generic, non-localized message.
      // The consumer app should ideally handle this case specifically
      // to provide a localized string.
      return 'Please check your internet connection and try again.';
    }
    // For all other exceptions, the provided `message` is the most specific.
    return message;
  }
}
