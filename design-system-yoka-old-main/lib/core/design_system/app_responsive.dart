import 'package:flutter/material.dart';
import '../constant/app_colors.dart';

/// Yokapos Responsive Design System
/// Berisi utilities untuk responsive design dan adaptive layouts
class AppResponsive {
  // ========================================
  // BREAKPOINTS
  // ========================================

  /// Mobile breakpoint (phone)
  static const double mobile = 600;

  /// Tablet breakpoint
  static const double tablet = 900;

  /// Desktop breakpoint
  static const double desktop = 1200;

  /// Large desktop breakpoint
  static const double largeDesktop = 1600;

  // ========================================
  // SCREEN SIZE DETECTION
  // ========================================

  /// Check if current screen is mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobile;

  /// Check if current screen is tablet
  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= mobile && width < tablet;
  }

  /// Check if current screen is desktop
  static bool isDesktop(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= tablet && width < desktop;
  }

  /// Check if current screen is large desktop
  static bool isLargeDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktop;

  /// Get current screen size category
  static ScreenSize getScreenSize(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < mobile) return ScreenSize.mobile;
    if (width < tablet) return ScreenSize.tablet;
    if (width < desktop) return ScreenSize.desktop;
    return ScreenSize.largeDesktop;
  }

  /// Get responsive value based on screen size
  static T getResponsiveValue<T>({
    required BuildContext context,
    required T mobile,
    T? tablet,
    T? desktop,
    T? largeDesktop,
  }) {
    final screenSize = getScreenSize(context);

    switch (screenSize) {
      case ScreenSize.mobile:
        return mobile;
      case ScreenSize.tablet:
        return tablet ?? mobile;
      case ScreenSize.desktop:
        return desktop ?? tablet ?? mobile;
      case ScreenSize.largeDesktop:
        return largeDesktop ?? desktop ?? tablet ?? mobile;
    }
  }

  // ========================================
  // RESPONSIVE WIDGETS
  // ========================================

  /// Responsive container dengan padding yang berbeda
  static Widget responsiveContainer({
    required Widget child,
    EdgeInsets? mobilePadding,
    EdgeInsets? tabletPadding,
    EdgeInsets? desktopPadding,
    EdgeInsets? largeDesktopPadding,
    double? maxWidth,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final padding = getResponsiveValue<EdgeInsets>(
          context: context,
          mobile: mobilePadding ?? const EdgeInsets.all(16),
          tablet: tabletPadding ?? const EdgeInsets.all(24),
          desktop: desktopPadding ?? const EdgeInsets.all(32),
          largeDesktop: largeDesktopPadding ?? const EdgeInsets.all(40),
        );

        return Container(
          constraints: maxWidth != null
              ? BoxConstraints(maxWidth: maxWidth)
              : null,
          padding: padding,
          child: child,
        );
      },
    );
  }

  /// Responsive grid dengan kolom yang berbeda
  static Widget responsiveGrid({
    required List<Widget> children,
    int mobileColumns = 1,
    int tabletColumns = 2,
    int desktopColumns = 3,
    int largeDesktopColumns = 4,
    double crossAxisSpacing = 16,
    double mainAxisSpacing = 16,
    double childAspectRatio = 1.0,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final columns = getResponsiveValue<int>(
          context: context,
          mobile: mobileColumns,
          tablet: tabletColumns,
          desktop: desktopColumns,
          largeDesktop: largeDesktopColumns,
        );

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisSpacing: mainAxisSpacing,
            childAspectRatio: childAspectRatio,
          ),
          itemCount: children.length,
          itemBuilder: (context, index) => children[index],
        );
      },
    );
  }

  /// Responsive list dengan layout yang berbeda
  static Widget responsiveList({
    required List<Widget> children,
    bool mobileVertical = true,
    bool tabletVertical = true,
    bool desktopHorizontal = false,
    bool largeDesktopHorizontal = false,
    double spacing = 16,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isVertical = getResponsiveValue<bool>(
          context: context,
          mobile: mobileVertical,
          tablet: tabletVertical,
          desktop: desktopHorizontal,
          largeDesktop: largeDesktopHorizontal,
        );

        if (isVertical) {
          return Column(
            children: children.asMap().entries.map((entry) {
              final index = entry.key;
              final child = entry.value;
              return Column(
                children: [
                  child,
                  if (index < children.length - 1) SizedBox(height: spacing),
                ],
              );
            }).toList(),
          );
        } else {
          return Row(
            children: children.asMap().entries.map((entry) {
              final index = entry.key;
              final child = entry.value;
              return Row(
                children: [
                  Expanded(child: child),
                  if (index < children.length - 1) SizedBox(width: spacing),
                ],
              );
            }).toList(),
          );
        }
      },
    );
  }

  /// Responsive text dengan ukuran yang berbeda
  static Widget responsiveText({
    required String text,
    TextStyle? mobileStyle,
    TextStyle? tabletStyle,
    TextStyle? desktopStyle,
    TextStyle? largeDesktopStyle,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final style = getResponsiveValue<TextStyle?>(
          context: context,
          mobile: mobileStyle,
          tablet: tabletStyle,
          desktop: desktopStyle,
          largeDesktop: largeDesktopStyle,
        );

        return Text(
          text,
          style: style,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
        );
      },
    );
  }

  /// Responsive button dengan ukuran yang berbeda
  static Widget responsiveButton({
    required String text,
    required VoidCallback onPressed,
    ButtonType type = ButtonType.primary,
    double? mobileWidth,
    double? tabletWidth,
    double? desktopWidth,
    double? largeDesktopWidth,
    double? mobileHeight,
    double? tabletHeight,
    double? desktopHeight,
    double? largeDesktopHeight,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = getResponsiveValue<double?>(
          context: context,
          mobile: mobileWidth,
          tablet: tabletWidth,
          desktop: desktopWidth,
          largeDesktop: largeDesktopWidth,
        );

        final height = getResponsiveValue<double?>(
          context: context,
          mobile: mobileHeight ?? 48,
          tablet: tabletHeight ?? 52,
          desktop: desktopHeight ?? 56,
          largeDesktop: largeDesktopHeight ?? 60,
        );

        Widget button;
        switch (type) {
          case ButtonType.primary:
            button = Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                gradient: AppColors.primaryGradient,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.shadow,
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Noto Sans',
                  ),
                ),
              ),
            );
            break;
          case ButtonType.secondary:
            button = SizedBox(
              width: width,
              height: height,
              child: OutlinedButton(
                onPressed: onPressed,
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.primary,
                  side: const BorderSide(color: AppColors.primary, width: 1.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Noto Sans',
                  ),
                ),
              ),
            );
            break;
          case ButtonType.text:
            button = SizedBox(
              width: width,
              height: height,
              child: TextButton(
                onPressed: onPressed,
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Noto Sans',
                  ),
                ),
              ),
            );
            break;
        }

        return button;
      },
    );
  }

  /// Responsive card dengan layout yang berbeda
  static Widget responsiveCard({
    required Widget child,
    EdgeInsets? mobilePadding,
    EdgeInsets? tabletPadding,
    EdgeInsets? desktopPadding,
    EdgeInsets? largeDesktopPadding,
    EdgeInsets? mobileMargin,
    EdgeInsets? tabletMargin,
    EdgeInsets? desktopMargin,
    EdgeInsets? largeDesktopMargin,
    Color? backgroundColor,
    double? elevation,
    BorderRadius? borderRadius,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final padding = getResponsiveValue<EdgeInsets>(
          context: context,
          mobile: mobilePadding ?? const EdgeInsets.all(16),
          tablet: tabletPadding ?? const EdgeInsets.all(20),
          desktop: desktopPadding ?? const EdgeInsets.all(24),
          largeDesktop: largeDesktopPadding ?? const EdgeInsets.all(28),
        );

        final margin = getResponsiveValue<EdgeInsets>(
          context: context,
          mobile:
              mobileMargin ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          tablet:
              tabletMargin ??
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          desktop:
              desktopMargin ??
              const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          largeDesktop:
              largeDesktopMargin ??
              const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
        );

        return Container(
          margin: margin,
          decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.cardBackground,
            borderRadius: borderRadius ?? BorderRadius.circular(12),
            border: Border.all(color: AppColors.border),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadow,
                blurRadius: elevation ?? 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(padding: padding, child: child),
        );
      },
    );
  }

  /// Responsive navigation bar
  static Widget responsiveNavigationBar({
    required List<NavigationItem> items,
    required int currentIndex,
    required Function(int) onTap,
    Color? backgroundColor,
    Color? selectedColor,
    Color? unselectedColor,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobileScreen = AppResponsive.isMobile(context);

        if (isMobileScreen) {
          return BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onTap,
            type: BottomNavigationBarType.fixed,
            backgroundColor: backgroundColor ?? AppColors.white,
            selectedItemColor: selectedColor ?? AppColors.primary,
            unselectedItemColor: unselectedColor ?? AppColors.grey,
            items: items
                .map(
                  (item) => BottomNavigationBarItem(
                    icon: item.icon,
                    label: item.label,
                  ),
                )
                .toList(),
          );
        } else {
          return Container(
            height: 60,
            color: backgroundColor ?? AppColors.primary,
            child: Row(
              children: items.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;
                final isSelected = index == currentIndex;

                return Expanded(
                  child: InkWell(
                    onTap: () => onTap(index),
                    child: Container(
                      decoration: BoxDecoration(
                        color: isSelected
                            ? AppColors.primaryLight
                            : Colors.transparent,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          item.icon,
                          const SizedBox(height: 4),
                          Text(
                            item.label,
                            style: TextStyle(
                              color: isSelected
                                  ? AppColors.white
                                  : AppColors.white.withOpacity(0.7),
                              fontSize: 12,
                              fontWeight: isSelected
                                  ? FontWeight.w600
                                  : FontWeight.w500,
                              fontFamily: 'Noto Sans',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          );
        }
      },
    );
  }

  /// Responsive drawer
  static Widget responsiveDrawer({
    required List<DrawerItem> items,
    Widget? header,
    Color? backgroundColor,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Drawer(
          backgroundColor: backgroundColor ?? AppColors.white,
          child: Column(
            children: [
              if (header != null) header,
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return ListTile(
                      leading: Icon(item.icon, color: AppColors.textPrimary),
                      title: Text(
                        item.title,
                        style: const TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 16,
                          fontFamily: 'Noto Sans',
                        ),
                      ),
                      onTap: item.onTap,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  /// Responsive app bar
  static PreferredSizeWidget responsiveAppBar({
    required String title,
    List<Widget>? actions,
    Widget? leading,
    bool centerTitle = true,
    Color? backgroundColor,
    Color? foregroundColor,
    double? elevation,
  }) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: foregroundColor ?? AppColors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: 'Noto Sans',
        ),
      ),
      leading: leading,
      actions: actions,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor ?? AppColors.primary,
      foregroundColor: foregroundColor ?? AppColors.white,
      elevation: elevation ?? 0,
    );
  }
}

// ========================================
// ENUMS AND MODELS
// ========================================

/// Screen size categories
enum ScreenSize { mobile, tablet, desktop, largeDesktop }

/// Button types (deprecated - use AppComponents instead)
@Deprecated(
  'Use AppComponents.primaryButton, secondaryButton, textButton instead',
)
enum ButtonType { primary, secondary, text }

/// Navigation item model
/// Used by responsiveNavigationBar component
class NavigationItem {
  final Widget icon;
  final String label;

  const NavigationItem({required this.icon, required this.label});
}

/// Drawer item model
/// Used by responsiveDrawer component
class DrawerItem {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const DrawerItem({
    required this.icon,
    required this.title,
    required this.onTap,
  });
}

// ========================================
// EXTENSIONS
// ========================================

/// Extension untuk memudahkan penggunaan responsive utilities
extension ResponsiveExtension on Widget {
  /// Wrap widget dengan responsive container
  Widget responsiveContainer({
    EdgeInsets? mobilePadding,
    EdgeInsets? tabletPadding,
    EdgeInsets? desktopPadding,
    EdgeInsets? largeDesktopPadding,
    double? maxWidth,
  }) {
    return AppResponsive.responsiveContainer(
      child: this,
      mobilePadding: mobilePadding,
      tabletPadding: tabletPadding,
      desktopPadding: desktopPadding,
      largeDesktopPadding: largeDesktopPadding,
      maxWidth: maxWidth,
    );
  }

  /// Wrap widget dengan responsive card
  Widget responsiveCard({
    EdgeInsets? mobilePadding,
    EdgeInsets? tabletPadding,
    EdgeInsets? desktopPadding,
    EdgeInsets? largeDesktopPadding,
    EdgeInsets? mobileMargin,
    EdgeInsets? tabletMargin,
    EdgeInsets? desktopMargin,
    EdgeInsets? largeDesktopMargin,
    Color? backgroundColor,
    double? elevation,
    BorderRadius? borderRadius,
  }) {
    return AppResponsive.responsiveCard(
      child: this,
      mobilePadding: mobilePadding,
      tabletPadding: tabletPadding,
      desktopPadding: desktopPadding,
      largeDesktopPadding: largeDesktopPadding,
      mobileMargin: mobileMargin,
      tabletMargin: tabletMargin,
      desktopMargin: desktopMargin,
      largeDesktopMargin: largeDesktopMargin,
      backgroundColor: backgroundColor,
      elevation: elevation,
      borderRadius: borderRadius,
    );
  }
}
