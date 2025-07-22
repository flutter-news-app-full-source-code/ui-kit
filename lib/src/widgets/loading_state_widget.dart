import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

/// A widget to display a loading state, typically when fetching data.
///
/// It shows an icon, a headline, a subheadline, and a circular progress
/// indicator to inform the user that an operation is in progress.
///
/// ## Example
///
/// ```dart
/// const LoadingStateWidget(
///   icon: Icons.downloading,
///   headline: 'Loading Articles',
///   subheadline: 'Please wait a moment...',
/// )
/// ```
class LoadingStateWidget extends StatelessWidget {
  /// Creates a [LoadingStateWidget].
  const LoadingStateWidget({
    required this.icon,
    required this.headline,
    required this.subheadline,
    super.key,
  });

  /// The icon to display at the top of the widget.
  final IconData icon;

  /// The main headline text.
  final String headline;

  /// The supporting subheadline text.
  final String subheadline;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 64, color: theme.colorScheme.secondary),
          const SizedBox(height: AppSpacing.lg),
          Text(
            headline,
            style: theme.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            subheadline,
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.lg),
          CircularProgressIndicator(color: theme.colorScheme.secondary),
        ],
      ),
    );
  }
}
