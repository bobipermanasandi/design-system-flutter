import 'package:flutter/material.dart';

/// Custom Icon Button Widget
///
/// A customizable icon button that follows the design system guidelines.
class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.size = AppIconButtonSize.medium,
    this.type = AppIconButtonType.standard,
    this.tooltip,
    this.isLoading = false,
  });

  const AppIconButton.filled({
    super.key,
    required this.icon,
    required this.onPressed,
    this.size = AppIconButtonSize.medium,
    this.tooltip,
    this.isLoading = false,
  }) : type = AppIconButtonType.filled;

  const AppIconButton.outlined({
    super.key,
    required this.icon,
    required this.onPressed,
    this.size = AppIconButtonSize.medium,
    this.tooltip,
    this.isLoading = false,
  }) : type = AppIconButtonType.outlined;

  final Widget icon;
  final VoidCallback? onPressed;
  final AppIconButtonSize size;
  final AppIconButtonType type;
  final String? tooltip;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget buttonChild = isLoading
        ? SizedBox(
            width: _getIconSize() * 0.6,
            height: _getIconSize() * 0.6,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(_getIconColor(theme)),
            ),
          )
        : IconTheme(
            data: IconThemeData(
              size: _getIconSize(),
              color: _getIconColor(theme),
            ),
            child: icon,
          );

    Widget button = _buildButton(context, buttonChild);

    if (tooltip != null) {
      button = Tooltip(message: tooltip!, child: button);
    }

    return button;
  }

  Widget _buildButton(BuildContext context, Widget child) {
    switch (type) {
      case AppIconButtonType.standard:
        return IconButton(
          onPressed: isLoading ? null : onPressed,
          icon: child,
          style: _getStandardStyle(context),
        );
      case AppIconButtonType.filled:
        return IconButton.filled(
          onPressed: isLoading ? null : onPressed,
          icon: child,
          style: _getFilledStyle(context),
        );
      case AppIconButtonType.outlined:
        return IconButton.outlined(
          onPressed: isLoading ? null : onPressed,
          icon: child,
          style: _getOutlinedStyle(context),
        );
    }
  }

  ButtonStyle _getStandardStyle(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton.styleFrom(
      foregroundColor: theme.colorScheme.onSurfaceVariant,
      minimumSize: Size(_getButtonSize(), _getButtonSize()),
    );
  }

  ButtonStyle _getFilledStyle(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton.styleFrom(
      backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.onPrimary,
      minimumSize: Size(_getButtonSize(), _getButtonSize()),
    );
  }

  ButtonStyle _getOutlinedStyle(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton.styleFrom(
      foregroundColor: theme.colorScheme.primary,
      side: BorderSide(color: theme.colorScheme.outline),
      minimumSize: Size(_getButtonSize(), _getButtonSize()),
    );
  }

  double _getButtonSize() {
    switch (size) {
      case AppIconButtonSize.small:
        return 32;
      case AppIconButtonSize.medium:
        return 40;
      case AppIconButtonSize.large:
        return 48;
    }
  }

  double _getIconSize() {
    switch (size) {
      case AppIconButtonSize.small:
        return 16;
      case AppIconButtonSize.medium:
        return 20;
      case AppIconButtonSize.large:
        return 24;
    }
  }

  Color _getIconColor(ThemeData theme) {
    switch (type) {
      case AppIconButtonType.standard:
        return theme.colorScheme.onSurfaceVariant;
      case AppIconButtonType.filled:
        return theme.colorScheme.onPrimary;
      case AppIconButtonType.outlined:
        return theme.colorScheme.primary;
    }
  }
}

/// Icon button types
enum AppIconButtonType { standard, filled, outlined }

/// Icon button sizes
enum AppIconButtonSize { small, medium, large }
