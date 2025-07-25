import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/src/constants/app_spacing.dart';
import 'package:ui_kit/src/extensions/exception_l10n_helper.dart';
import 'package:ui_kit/src/extensions/l10n_helper.dart';

/// A widget to display an error message and an optional retry button.
///
/// ## Example
///
/// ```dart
/// FailureStateWidget(
///   exception: NetworkException(),
///   onRetry: () {
///     // Logic to retry the failed operation
///   },
/// )
/// ```
class FailureStateWidget extends StatelessWidget {
  /// Creates a [FailureStateWidget].
  ///
  /// This widget accepts an [exception] of type [HttpException]
  /// and uses the `toFriendlyMessage` extension from `ui_kit`
  /// to display a localized, user-friendly error message.
  ///
  /// The [onRetry] is an optional callback to be called
  /// when the retry button is pressed.
  const FailureStateWidget({
    required this.exception,
    super.key,
    this.onRetry,
    this.retryButtonText,
  });

  /// The error exception to display.
  /// This exception will be converted to a friendly, localized message.
  final HttpException exception;

  /// An optional callback to be called when the retry button is pressed.
  final VoidCallback? onRetry;

  /// Optional custom text for the retry button. Defaults to "Retry".
  final String? retryButtonText;

  @override
  Widget build(BuildContext context) {
    final friendlyMessage = exception.toFriendlyMessage(context);
    final l10n = context.l10n;
    final theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: theme.colorScheme.error),
          const SizedBox(height: AppSpacing.lg),
          Text(
            friendlyMessage,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.error,
            ),
            textAlign: TextAlign.center,
          ),
          // Show the retry button only if onRetry is provided
          if (onRetry != null)
            Padding(
              padding: const EdgeInsets.only(top: AppSpacing.lg),
              child: ElevatedButton(
                onPressed: onRetry,
                child: Text(retryButtonText ?? l10n.retryButtonText),
              ),
            ),
        ],
      ),
    );
  }
}
