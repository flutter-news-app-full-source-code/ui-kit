import 'package:core/core.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_kit/src/extensions/l10n_helper.dart';

/// An extension to provide a user-friendly message from an [HttpException].
extension HttpExceptionL10n on HttpException {
  /// Returns a user-friendly message for the exception.
  ///
  /// This method returns a generic, localized message for every exception
  /// type, ensuring a consistent and user-friendly error display.
  ///
  /// Requires a [BuildContext] to access the localized strings provided by the
  /// generated 'UiKitLocalizations' class.
  String toFriendlyMessage(BuildContext context) {
    final l10n = context.l10n;

    // This switch maps every known HttpException subtype to a
    // corresponding localized string.
    return switch (this) {
      AuthenticationException() => l10n.authenticationError,
      BadRequestException() => l10n.badRequestError,
      ForbiddenException() => l10n.forbiddenError,
      InvalidInputException() => l10n.invalidInputError,
      NotFoundException() => l10n.notFoundError,
      UnauthorizedException() => l10n.unauthorizedError,
      NetworkException() => l10n.networkError,
      ServerException() => l10n.serverError,
      OperationFailedException() => l10n.operationFailedError,
      UnknownException() => l10n.unknownError,

      // Default case to ensure any future exception types are handled.
      _ => l10n.unknownError,
    };
  }
}
