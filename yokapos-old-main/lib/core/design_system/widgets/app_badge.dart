import 'package:flutter/material.dart';
import '../styles/typography.dart';
import '../styles/colors.dart';

/// Custom Badge Widget
///
/// A customizable badge that follows the design system guidelines.
class AppBadge extends StatelessWidget {
  const AppBadge({
    super.key,
    required this.label,
    this.type = AppBadgeType.primary,
    this.size = AppBadgeSize.medium,
    this.icon,
    this.onTap,
    this.showDot = false,
  });

  const AppBadge.success({
    super.key,
    required this.label,
    this.size = AppBadgeSize.medium,
    this.icon,
    this.onTap,
    this.showDot = false,
  }) : type = AppBadgeType.success;

  const AppBadge.warning({
    super.key,
    required this.label,
    this.size = AppBadgeSize.medium,
    this.icon,
    this.onTap,
    this.showDot = false,
  }) : type = AppBadgeType.warning;

  const AppBadge.error({
    super.key,
    required this.label,
    this.size = AppBadgeSize.medium,
    this.icon,
    this.onTap,
    this.showDot = false,
  }) : type = AppBadgeType.error;

  const AppBadge.neutral({
    super.key,
    required this.label,
    this.size = AppBadgeSize.medium,
    this.icon,
    this.onTap,
    this.showDot = false,
  }) : type = AppBadgeType.neutral;

  const AppBadge.dot({
    super.key,
    this.label = '',
    this.type = AppBadgeType.primary,
    this.size = AppBadgeSize.small,
    this.onTap,
  }) : icon = null,
       showDot = true;

  final String label;
  final AppBadgeType type;
  final AppBadgeSize size;
  final Widget? icon;
  final VoidCallback? onTap;
  final bool showDot;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget badge = Container(
      padding: _getPadding(),
      decoration: BoxDecoration(
        color: _getBackgroundColor(),
        borderRadius: BorderRadius.circular(_getBorderRadius()),
        border: _getBorder(),
      ),
      child: showDot ? null : _buildContent(theme),
    );

    if (showDot) {
      badge = SizedBox(
        width: _getDotSize(),
        height: _getDotSize(),
        child: badge,
      );
    }

    if (onTap != null) {
      badge = InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(_getBorderRadius()),
        child: badge,
      );
    }

    return badge;
  }

  Widget _buildContent(ThemeData theme) {
    final children = <Widget>[];

    if (icon != null) {
      children.add(
        IconTheme(
          data: IconThemeData(size: _getIconSize(), color: _getTextColor()),
          child: icon!,
        ),
      );

      if (label.isNotEmpty) {
        children.add(SizedBox(width: _getIconSpacing()));
      }
    }

    if (label.isNotEmpty) {
      children.add(
        Text(label, style: _getTextStyle().copyWith(color: _getTextColor())),
      );
    }

    return Row(mainAxisSize: MainAxisSize.min, children: children);
  }

  EdgeInsets _getPadding() {
    if (showDot) return EdgeInsets.zero;

    switch (size) {
      case AppBadgeSize.small:
        return const EdgeInsets.symmetric(horizontal: 6, vertical: 2);
      case AppBadgeSize.medium:
        return const EdgeInsets.symmetric(horizontal: 8, vertical: 4);
      case AppBadgeSize.large:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 6);
    }
  }

  double _getBorderRadius() {
    if (showDot) return _getDotSize() / 2;

    switch (size) {
      case AppBadgeSize.small:
        return 4;
      case AppBadgeSize.medium:
        return 6;
      case AppBadgeSize.large:
        return 8;
    }
  }

  double _getDotSize() {
    switch (size) {
      case AppBadgeSize.small:
        return 6;
      case AppBadgeSize.medium:
        return 8;
      case AppBadgeSize.large:
        return 10;
    }
  }

  double _getIconSize() {
    switch (size) {
      case AppBadgeSize.small:
        return 12;
      case AppBadgeSize.medium:
        return 14;
      case AppBadgeSize.large:
        return 16;
    }
  }

  double _getIconSpacing() {
    switch (size) {
      case AppBadgeSize.small:
        return 4;
      case AppBadgeSize.medium:
        return 4;
      case AppBadgeSize.large:
        return 6;
    }
  }

  TextStyle _getTextStyle() {
    switch (size) {
      case AppBadgeSize.small:
        return AppTypography.labelSmall;
      case AppBadgeSize.medium:
        return AppTypography.labelMedium;
      case AppBadgeSize.large:
        return AppTypography.labelLarge;
    }
  }

  Color _getBackgroundColor() {
    switch (type) {
      case AppBadgeType.primary:
        return AppColors.primary10;
      case AppBadgeType.secondary:
        return AppColors.secondary10;
      case AppBadgeType.success:
        return AppColors.success10;
      case AppBadgeType.warning:
        return AppColors.warning10;
      case AppBadgeType.error:
        return AppColors.error10;
      case AppBadgeType.neutral:
        return AppColors.neutral10;
    }
  }

  Color _getTextColor() {
    switch (type) {
      case AppBadgeType.primary:
        return AppColors.primary70;
      case AppBadgeType.secondary:
        return AppColors.secondary70;
      case AppBadgeType.success:
        return AppColors.success70;
      case AppBadgeType.warning:
        return AppColors.warning70;
      case AppBadgeType.error:
        return AppColors.error70;
      case AppBadgeType.neutral:
        return AppColors.neutral70;
    }
  }

  Border? _getBorder() {
    // Add subtle border for better definition
    switch (type) {
      case AppBadgeType.primary:
        return Border.all(
          color: AppColors.primary30.withValues(alpha: 0.5),
          width: 0.5,
        );
      case AppBadgeType.secondary:
        return Border.all(
          color: AppColors.secondary30.withValues(alpha: 0.5),
          width: 0.5,
        );
      case AppBadgeType.success:
        return Border.all(
          color: AppColors.success30.withValues(alpha: 0.5),
          width: 0.5,
        );
      case AppBadgeType.warning:
        return Border.all(
          color: AppColors.warning30.withValues(alpha: 0.5),
          width: 0.5,
        );
      case AppBadgeType.error:
        return Border.all(
          color: AppColors.error30.withValues(alpha: 0.5),
          width: 0.5,
        );
      case AppBadgeType.neutral:
        return Border.all(
          color: AppColors.neutral30.withValues(alpha: 0.5),
          width: 0.5,
        );
    }
  }
}

/// Badge types
enum AppBadgeType { primary, secondary, success, warning, error, neutral }

/// Badge sizes
enum AppBadgeSize { small, medium, large }
