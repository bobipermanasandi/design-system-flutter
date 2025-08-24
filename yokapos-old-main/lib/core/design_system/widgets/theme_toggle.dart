import 'package:flutter/material.dart';
import '../themes/theme_controller.dart';
import 'app_icon_button.dart';

/// Theme Toggle Widget
///
/// A customizable widget for toggling between light, dark, and system themes.
class ThemeToggle extends StatefulWidget {
  const ThemeToggle({
    super.key,
    required this.controller,
    this.size = AppIconButtonSize.medium,
    this.showTooltip = true,
    this.showModeText = false,
    this.animationDuration = const Duration(milliseconds: 300),
  });

  final ThemeController controller;
  final AppIconButtonSize size;
  final bool showTooltip;
  final bool showModeText;
  final Duration animationDuration;

  @override
  State<ThemeToggle> createState() => _ThemeToggleState();
}

class _ThemeToggleState extends State<ThemeToggle>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _rotationAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    _rotationAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.elasticOut),
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.8).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    widget.controller.addListener(_onThemeChanged);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onThemeChanged);
    _animationController.dispose();
    super.dispose();
  }

  void _onThemeChanged() {
    if (mounted) {
      _animationController.forward().then((_) {
        _animationController.reset();
      });
    }
  }

  void _onToggle() {
    widget.controller.toggleTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.controller,
      builder: (context, child) {
        if (widget.showModeText) {
          return _buildWithText();
        }
        return _buildIconOnly();
      },
    );
  }

  Widget _buildIconOnly() {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.rotate(
          angle: _rotationAnimation.value * 2 * 3.14159,
          child: Transform.scale(
            scale: _scaleAnimation.value,
            child: AppIconButton(
              icon: Icon(widget.controller.themeIcon),
              onPressed: _onToggle,
              size: widget.size,
              tooltip: widget.showTooltip
                  ? 'Switch to ${_getNextThemeModeName()} mode'
                  : null,
            ),
          ),
        );
      },
    );
  }

  Widget _buildWithText() {
    final theme = Theme.of(context);

    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return InkWell(
          onTap: _onToggle,
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Transform.rotate(
                  angle: _rotationAnimation.value * 2 * 3.14159,
                  child: Transform.scale(
                    scale: _scaleAnimation.value,
                    child: Icon(
                      widget.controller.themeIcon,
                      size: _getIconSize(),
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  widget.controller.themeModeDisplayName,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  double _getIconSize() {
    switch (widget.size) {
      case AppIconButtonSize.small:
        return 16;
      case AppIconButtonSize.medium:
        return 20;
      case AppIconButtonSize.large:
        return 24;
    }
  }

  String _getNextThemeModeName() {
    switch (widget.controller.themeMode) {
      case ThemeMode.light:
        return 'dark';
      case ThemeMode.dark:
        return 'system';
      case ThemeMode.system:
        return 'light';
    }
  }
}

/// Theme Mode Selector
///
/// A dropdown-style selector for choosing theme mode with all three options.
class ThemeModeSelector extends StatelessWidget {
  const ThemeModeSelector({super.key, required this.controller});

  final ThemeController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListenableBuilder(
      listenable: controller,
      builder: (context, child) {
        return PopupMenuButton<ThemeMode>(
          initialValue: controller.themeMode,
          onSelected: (ThemeMode mode) {
            controller.setThemeMode(mode);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<ThemeMode>>[
            PopupMenuItem<ThemeMode>(
              value: ThemeMode.system,
              child: Row(
                children: [
                  Icon(
                    Icons.auto_mode,
                    size: 20,
                    color: controller.themeMode == ThemeMode.system
                        ? theme.colorScheme.primary
                        : theme.colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'System',
                    style: TextStyle(
                      color: controller.themeMode == ThemeMode.system
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurface,
                      fontWeight: controller.themeMode == ThemeMode.system
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            PopupMenuItem<ThemeMode>(
              value: ThemeMode.light,
              child: Row(
                children: [
                  Icon(
                    Icons.light_mode,
                    size: 20,
                    color: controller.themeMode == ThemeMode.light
                        ? theme.colorScheme.primary
                        : theme.colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Light',
                    style: TextStyle(
                      color: controller.themeMode == ThemeMode.light
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurface,
                      fontWeight: controller.themeMode == ThemeMode.light
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            PopupMenuItem<ThemeMode>(
              value: ThemeMode.dark,
              child: Row(
                children: [
                  Icon(
                    Icons.dark_mode,
                    size: 20,
                    color: controller.themeMode == ThemeMode.dark
                        ? theme.colorScheme.primary
                        : theme.colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Dark',
                    style: TextStyle(
                      color: controller.themeMode == ThemeMode.dark
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurface,
                      fontWeight: controller.themeMode == ThemeMode.dark
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  controller.themeIcon,
                  size: 20,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 8),
                Text(
                  controller.themeModeDisplayName,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.arrow_drop_down,
                  size: 16,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
