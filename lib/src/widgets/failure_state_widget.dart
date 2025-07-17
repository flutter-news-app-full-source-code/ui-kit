import 'package:flutter/material.dart';
import 'package:ht_shared/ht_shared.dart';
import 'package:ht_ui_kit/ht_ui_kit.dart';

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
  /// This widget accepts an [exception] of type [HtHttpException]
  /// and uses the `toFriendlyMessage` extension from `ht_ui_kit`
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
  final HtHttpException exception;

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
          Icon(
            Icons.error_outline,
            size: 64,
            color: theme.colorScheme.error,
          ),
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
