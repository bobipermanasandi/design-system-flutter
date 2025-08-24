import 'package:flutter/material.dart';
import '../styles/typography.dart';

/// Custom Dropdown Widget
///
/// A customizable dropdown that follows the design system guidelines.
class AppDropdown<T> extends StatelessWidget {
  const AppDropdown({
    super.key,
    required this.items,
    required this.onChanged,
    this.value,
    this.labelText,
    this.hintText,
    this.helperText,
    this.errorText,
    this.prefixIcon,
    this.enabled = true,
    this.validator,
    this.size = AppDropdownSize.medium,
  });

  final List<AppDropdownItem<T>> items;
  final ValueChanged<T?>? onChanged;
  final T? value;
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final String? errorText;
  final Widget? prefixIcon;
  final bool enabled;
  final String? Function(T?)? validator;
  final AppDropdownSize size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (labelText != null) ...[
          Text(
            labelText!,
            style: AppTypography.labelMedium.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 8),
        ],
        DropdownButtonFormField<T>(
          value: value,
          items: items
              .map(
                (item) => DropdownMenuItem<T>(
                  value: item.value,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (item.icon != null) ...[
                        item.icon!,
                        const SizedBox(width: 8),
                      ],
                      Flexible(
                        child: Text(
                          item.label,
                          style: _getTextStyle(theme),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
          onChanged: enabled ? onChanged : null,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: prefixIcon,
            errorText: errorText,
            contentPadding: _getContentPadding(),
            border: _getBorder(theme),
            enabledBorder: _getBorder(theme),
            focusedBorder: _getFocusedBorder(theme),
            errorBorder: _getErrorBorder(theme),
            focusedErrorBorder: _getFocusedErrorBorder(theme),
            filled: true,
            fillColor: theme.colorScheme.surface,
          ),
          style: _getTextStyle(theme),
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: theme.colorScheme.onSurfaceVariant,
          ),
          dropdownColor: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(8),
        ),
        if (helperText != null) ...[
          const SizedBox(height: 4),
          Text(
            helperText!,
            style: AppTypography.bodySmall.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ],
    );
  }

  TextStyle _getTextStyle(ThemeData theme) {
    final baseStyle = switch (size) {
      AppDropdownSize.small => AppTypography.bodySmall,
      AppDropdownSize.medium => AppTypography.bodyMedium,
      AppDropdownSize.large => AppTypography.bodyLarge,
    };

    return baseStyle.copyWith(color: theme.colorScheme.onSurface);
  }

  EdgeInsets _getContentPadding() {
    switch (size) {
      case AppDropdownSize.small:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 8);
      case AppDropdownSize.medium:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 12);
      case AppDropdownSize.large:
        return const EdgeInsets.symmetric(horizontal: 20, vertical: 16);
    }
  }

  OutlineInputBorder _getBorder(ThemeData theme) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: theme.colorScheme.outline, width: 1),
    );
  }

  OutlineInputBorder _getFocusedBorder(ThemeData theme) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: theme.colorScheme.primary, width: 2),
    );
  }

  OutlineInputBorder _getErrorBorder(ThemeData theme) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: theme.colorScheme.error, width: 1),
    );
  }

  OutlineInputBorder _getFocusedErrorBorder(ThemeData theme) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: theme.colorScheme.error, width: 2),
    );
  }
}

/// Dropdown item model
class AppDropdownItem<T> {
  const AppDropdownItem({required this.value, required this.label, this.icon});

  final T value;
  final String label;
  final Widget? icon;
}

/// Dropdown sizes
enum AppDropdownSize { small, medium, large }
