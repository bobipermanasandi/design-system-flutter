import 'package:flutter/material.dart';

/// Custom Icon Widget
///
/// A customizable icon widget that follows the design system guidelines.
class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    required this.icon,
    this.size = AppIconSize.medium,
    this.color,
    this.semanticLabel,
  });

  final IconData icon;
  final AppIconSize size;
  final Color? color;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Icon(
      icon,
      size: _getIconSize(),
      color: color ?? theme.colorScheme.onSurfaceVariant,
      semanticLabel: semanticLabel,
    );
  }

  double _getIconSize() {
    switch (size) {
      case AppIconSize.extraSmall:
        return 12;
      case AppIconSize.small:
        return 16;
      case AppIconSize.medium:
        return 20;
      case AppIconSize.large:
        return 24;
      case AppIconSize.extraLarge:
        return 32;
    }
  }
}

/// Icon sizes
enum AppIconSize { extraSmall, small, medium, large, extraLarge }
