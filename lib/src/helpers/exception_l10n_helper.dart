import 'package:flutter/widgets.dart';
import 'package:ht_shared/ht_shared.dart';
import 'package:ht_ui_kit/l10n/app_localizations.dart';

/// An extension to provide a user-friendly message from an [HtHttpException].
extension HtHttpExceptionL10n on HtHttpException {
  /// Returns a user-friendly message for the exception.
  ///
  /// This method intelligently decides whether to show the specific message
  /// from the server (which is often best for user-facing validation errors)
  /// or a generic, localized message for broader issues like network or
  /// server failures.
  ///
  /// Requires a [BuildContext] to access the localized strings provided by the
  /// generated [HtUiKitLocalizations] class.
  String toFriendlyMessage(BuildContext context) {
    final l10n = HtUiKitLocalizations.of(context)!;

    return switch (this) {
      // For these exceptions, the message from the server is specific
      // and intended for the user.
      final AuthenticationException e => e.message,
      final BadRequestException e => e.message,
      final ForbiddenException e => e.message,
      final InvalidInputException e => e.message,
      final NotFoundException e => e.message,
      final UnauthorizedException e => e.message,

      // For these exceptions, a generic, localized message is better.
      NetworkException() => l10n.networkError,
      ServerException() => l10n.serverError,
      OperationFailedException() => l10n.operationFailedError,

      // The UnknownException is a catch-all, so a generic message is best.
      UnknownException() => l10n.unknownError,

      // Default case to ensure any future exception types are handled.
      _ => l10n.unknownError,
    };
  }
}
