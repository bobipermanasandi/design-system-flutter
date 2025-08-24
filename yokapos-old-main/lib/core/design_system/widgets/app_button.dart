import 'package:flutter/material.dart';
import '../styles/typography.dart';

/// Custom Button Widget
///
/// A customizable button that follows the design system guidelines.
class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.type = AppButtonType.filled,
    this.size = AppButtonSize.medium,
    this.isLoading = false,
    this.isFullWidth = false,
    this.icon,
  });

  const AppButton.filled({
    super.key,
    required this.onPressed,
    required this.child,
    this.size = AppButtonSize.medium,
    this.isLoading = false,
    this.isFullWidth = false,
    this.icon,
  }) : type = AppButtonType.filled;

  const AppButton.outlined({
    super.key,
    required this.onPressed,
    required this.child,
    this.size = AppButtonSize.medium,
    this.isLoading = false,
    this.isFullWidth = false,
    this.icon,
  }) : type = AppButtonType.outlined;

  const AppButton.text({
    super.key,
    required this.onPressed,
    required this.child,
    this.size = AppButtonSize.medium,
    this.isLoading = false,
    this.isFullWidth = false,
    this.icon,
  }) : type = AppButtonType.text;

  final VoidCallback? onPressed;
  final Widget child;
  final AppButtonType type;
  final AppButtonSize size;
  final bool isLoading;
  final bool isFullWidth;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget buttonChild = isLoading
        ? SizedBox(
            width: _getLoadingSize(),
            height: _getLoadingSize(),
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(
                _getLoadingColor(theme),
              ),
            ),
          )
        : _buildButtonContent();

    Widget button = _buildButton(context, buttonChild);

    if (isFullWidth) {
      button = SizedBox(width: double.infinity, child: button);
    }

    return button;
  }

  Widget _buildButtonContent() {
    if (icon != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon!,
          const SizedBox(width: 8),
          Flexible(child: child),
        ],
      );
    }
    return child;
  }

  Widget _buildButton(BuildContext context, Widget child) {
    switch (type) {
      case AppButtonType.filled:
        return ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: _getElevatedButtonStyle(context),
          child: child,
        );
      case AppButtonType.outlined:
        return OutlinedButton(
          onPressed: isLoading ? null : onPressed,
          style: _getOutlinedButtonStyle(context),
          child: child,
        );
      case AppButtonType.text:
        return TextButton(
          onPressed: isLoading ? null : onPressed,
          style: _getTextButtonStyle(context),
          child: child,
        );
    }
  }

  ButtonStyle _getElevatedButtonStyle(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.onPrimary,
      elevation: 1,
      shadowColor: theme.colorScheme.shadow.withValues(alpha: 0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      textStyle: _getTextStyle(),
      padding: _getPadding(),
      minimumSize: _getMinimumSize(),
    );
  }

  ButtonStyle _getOutlinedButtonStyle(BuildContext context) {
    final theme = Theme.of(context);
    return OutlinedButton.styleFrom(
      foregroundColor: theme.colorScheme.primary,
      side: BorderSide(color: theme.colorScheme.outline),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      textStyle: _getTextStyle(),
      padding: _getPadding(),
      minimumSize: _getMinimumSize(),
    );
  }

  ButtonStyle _getTextButtonStyle(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton.styleFrom(
      foregroundColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      textStyle: _getTextStyle(),
      padding: _getPadding(),
      minimumSize: _getMinimumSize(),
    );
  }

  TextStyle _getTextStyle() {
    switch (size) {
      case AppButtonSize.small:
        return AppTypography.buttonSmall;
      case AppButtonSize.medium:
        return AppTypography.buttonMedium;
      case AppButtonSize.large:
        return AppTypography.buttonLarge;
    }
  }

  EdgeInsets _getPadding() {
    switch (size) {
      case AppButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
      case AppButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 12);
      case AppButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 32, vertical: 16);
    }
  }

  Size _getMinimumSize() {
    switch (size) {
      case AppButtonSize.small:
        return const Size(64, 32);
      case AppButtonSize.medium:
        return const Size(80, 40);
      case AppButtonSize.large:
        return const Size(96, 48);
    }
  }

  double _getLoadingSize() {
    switch (size) {
      case AppButtonSize.small:
        return 16;
      case AppButtonSize.medium:
        return 20;
      case AppButtonSize.large:
        return 24;
    }
  }

  Color _getLoadingColor(ThemeData theme) {
    switch (type) {
      case AppButtonType.filled:
        return theme.colorScheme.onPrimary;
      case AppButtonType.outlined:
      case AppButtonType.text:
        return theme.colorScheme.primary;
    }
  }
}

/// Button types
enum AppButtonType { filled, outlined, text }

/// Button sizes
enum AppButtonSize { small, medium, large }
