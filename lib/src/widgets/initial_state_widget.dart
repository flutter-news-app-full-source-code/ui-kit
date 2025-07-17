import 'package:flutter/material.dart';
import 'package:ht_ui_kit/ht_ui_kit.dart';

/// A widget to display an initial state, typically when a feature has not
/// yet been interacted with or contains no data.
///
/// It shows an icon, a headline, and a subheadline to guide the user.
///
/// ## Example (Prompt for User Action)
///
/// ```dart
/// const InitialStateWidget(
///   icon: Icons.lightbulb_outline,
///   headline: 'Get Started',
///   subheadline: 'Tap the button below to begin.',
/// )
/// ```
class InitialStateWidget extends StatelessWidget {
  /// Creates an [InitialStateWidget].
  const InitialStateWidget({
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
          Icon(
            icon,
            size: 64,
            color: theme.colorScheme.secondary,
          ),
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
        ],
      ),
    );
  }
}
