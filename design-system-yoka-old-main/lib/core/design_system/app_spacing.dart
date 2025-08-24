import 'package:flutter/material.dart';

/// Spacing System untuk Yokapos
/// Phase 3 - Comprehensive spacing dengan responsive design
class AppSpacing {
  // ========================================
  // SPACING SCALE
  // ========================================

  /// Extra Extra Small - 2px
  static const double xxs = 2;

  /// Extra Small - 4px
  static const double xs = 4;

  /// Small - 8px
  static const double sm = 8;

  /// Medium - 16px
  static const double md = 16;

  /// Large - 24px
  static const double lg = 24;

  /// Extra Large - 32px
  static const double xl = 32;

  /// Extra Extra Large - 48px
  static const double xxl = 48;

  /// Huge - 64px
  static const double huge = 64;

  /// Massive - 96px
  static const double massive = 96;

  // ========================================
  // EDGE INSETS
  // ========================================

  /// Padding untuk semua sisi
  static const EdgeInsets allXxs = EdgeInsets.all(xxs);
  static const EdgeInsets allXs = EdgeInsets.all(xs);
  static const EdgeInsets allSm = EdgeInsets.all(sm);
  static const EdgeInsets allMd = EdgeInsets.all(md);
  static const EdgeInsets allLg = EdgeInsets.all(lg);
  static const EdgeInsets allXl = EdgeInsets.all(xl);
  static const EdgeInsets allXxl = EdgeInsets.all(xxl);
  static const EdgeInsets allHuge = EdgeInsets.all(huge);
  static const EdgeInsets allMassive = EdgeInsets.all(massive);

  /// Padding horizontal
  static const EdgeInsets horizontalXs = EdgeInsets.symmetric(horizontal: xs);
  static const EdgeInsets horizontalSm = EdgeInsets.symmetric(horizontal: sm);
  static const EdgeInsets horizontalMd = EdgeInsets.symmetric(horizontal: md);
  static const EdgeInsets horizontalLg = EdgeInsets.symmetric(horizontal: lg);
  static const EdgeInsets horizontalXl = EdgeInsets.symmetric(horizontal: xl);
  static const EdgeInsets horizontalXxl = EdgeInsets.symmetric(horizontal: xxl);

  /// Padding vertical
  static const EdgeInsets verticalXs = EdgeInsets.symmetric(vertical: xs);
  static const EdgeInsets verticalSm = EdgeInsets.symmetric(vertical: sm);
  static const EdgeInsets verticalMd = EdgeInsets.symmetric(vertical: md);
  static const EdgeInsets verticalLg = EdgeInsets.symmetric(vertical: lg);
  static const EdgeInsets verticalXl = EdgeInsets.symmetric(vertical: xl);
  static const EdgeInsets verticalXxl = EdgeInsets.symmetric(vertical: xxl);

  /// Padding untuk card
  static const EdgeInsets cardPadding = EdgeInsets.all(md);
  static const EdgeInsets cardPaddingHorizontal = EdgeInsets.symmetric(
    horizontal: md,
  );
  static const EdgeInsets cardPaddingVertical = EdgeInsets.symmetric(
    vertical: sm,
  );

  /// Padding untuk button
  static const EdgeInsets buttonPadding = EdgeInsets.symmetric(
    horizontal: lg,
    vertical: md,
  );
  static const EdgeInsets buttonPaddingSmall = EdgeInsets.symmetric(
    horizontal: md,
    vertical: sm,
  );
  static const EdgeInsets buttonPaddingLarge = EdgeInsets.symmetric(
    horizontal: xl,
    vertical: lg,
  );

  /// Padding untuk input field
  static const EdgeInsets inputPadding = EdgeInsets.symmetric(
    horizontal: md,
    vertical: sm,
  );
  static const EdgeInsets inputPaddingLarge = EdgeInsets.symmetric(
    horizontal: md,
    vertical: md,
  );

  /// Padding untuk list item
  static const EdgeInsets listItemPadding = EdgeInsets.symmetric(
    horizontal: md,
    vertical: sm,
  );
  static const EdgeInsets listItemPaddingLarge = EdgeInsets.symmetric(
    horizontal: md,
    vertical: md,
  );

  /// Padding untuk modal
  static const EdgeInsets modalPadding = EdgeInsets.all(lg);
  static const EdgeInsets modalPaddingHorizontal = EdgeInsets.symmetric(
    horizontal: lg,
  );
  static const EdgeInsets modalPaddingVertical = EdgeInsets.symmetric(
    vertical: md,
  );

  /// Padding untuk app bar
  static const EdgeInsets appBarPadding = EdgeInsets.symmetric(
    horizontal: md,
    vertical: sm,
  );

  /// Padding untuk bottom navigation
  static const EdgeInsets bottomNavPadding = EdgeInsets.symmetric(
    horizontal: md,
    vertical: sm,
  );

  // ========================================
  // MARGIN
  // ========================================

  /// Margin untuk semua sisi
  static const EdgeInsets marginXxs = EdgeInsets.all(xxs);
  static const EdgeInsets marginXs = EdgeInsets.all(xs);
  static const EdgeInsets marginSm = EdgeInsets.all(sm);
  static const EdgeInsets marginMd = EdgeInsets.all(md);
  static const EdgeInsets marginLg = EdgeInsets.all(lg);
  static const EdgeInsets marginXl = EdgeInsets.all(xl);
  static const EdgeInsets marginXxl = EdgeInsets.all(xxl);

  /// Margin horizontal
  static const EdgeInsets marginHorizontalXs = EdgeInsets.symmetric(
    horizontal: xs,
  );
  static const EdgeInsets marginHorizontalSm = EdgeInsets.symmetric(
    horizontal: sm,
  );
  static const EdgeInsets marginHorizontalMd = EdgeInsets.symmetric(
    horizontal: md,
  );
  static const EdgeInsets marginHorizontalLg = EdgeInsets.symmetric(
    horizontal: lg,
  );
  static const EdgeInsets marginHorizontalXl = EdgeInsets.symmetric(
    horizontal: xl,
  );

  /// Margin vertical
  static const EdgeInsets marginVerticalXs = EdgeInsets.symmetric(vertical: xs);
  static const EdgeInsets marginVerticalSm = EdgeInsets.symmetric(vertical: sm);
  static const EdgeInsets marginVerticalMd = EdgeInsets.symmetric(vertical: md);
  static const EdgeInsets marginVerticalLg = EdgeInsets.symmetric(vertical: lg);
  static const EdgeInsets marginVerticalXl = EdgeInsets.symmetric(vertical: xl);

  // ========================================
  // GAP SPACING
  // ========================================

  /// Gap untuk Row dan Column
  static const SizedBox gapXxs = SizedBox(width: xxs, height: xxs);
  static const SizedBox gapXs = SizedBox(width: xs, height: xs);
  static const SizedBox gapSm = SizedBox(width: sm, height: sm);
  static const SizedBox gapMd = SizedBox(width: md, height: md);
  static const SizedBox gapLg = SizedBox(width: lg, height: lg);
  static const SizedBox gapXl = SizedBox(width: xl, height: xl);
  static const SizedBox gapXxl = SizedBox(width: xxl, height: xxl);
  static const SizedBox gapHuge = SizedBox(width: huge, height: huge);

  /// Horizontal gap untuk Row
  static const SizedBox gapHorizontalXxs = SizedBox(width: xxs);
  static const SizedBox gapHorizontalXs = SizedBox(width: xs);
  static const SizedBox gapHorizontalSm = SizedBox(width: sm);
  static const SizedBox gapHorizontalMd = SizedBox(width: md);
  static const SizedBox gapHorizontalLg = SizedBox(width: lg);
  static const SizedBox gapHorizontalXl = SizedBox(width: xl);
  static const SizedBox gapHorizontalXxl = SizedBox(width: xxl);
  static const SizedBox gapHorizontalHuge = SizedBox(width: huge);

  /// Vertical gap untuk Column
  static const SizedBox gapVerticalXxs = SizedBox(height: xxs);
  static const SizedBox gapVerticalXs = SizedBox(height: xs);
  static const SizedBox gapVerticalSm = SizedBox(height: sm);
  static const SizedBox gapVerticalMd = SizedBox(height: md);
  static const SizedBox gapVerticalLg = SizedBox(height: lg);
  static const SizedBox gapVerticalXl = SizedBox(height: xl);
  static const SizedBox gapVerticalXxl = SizedBox(height: xxl);
  static const SizedBox gapVerticalHuge = SizedBox(height: huge);

  // ========================================
  // RESPONSIVE SPACING
  // ========================================

  /// Responsive padding berdasarkan screen size
  static EdgeInsets responsivePadding({
    required BuildContext context,
    EdgeInsets? mobilePadding,
    EdgeInsets? tabletPadding,
    EdgeInsets? desktopPadding,
    EdgeInsets? largeDesktopPadding,
  }) {
    final width = MediaQuery.of(context).size.width;

    if (width >= 1600 && largeDesktopPadding != null) {
      return largeDesktopPadding;
    } else if (width >= 1200 && desktopPadding != null) {
      return desktopPadding;
    } else if (width >= 900 && tabletPadding != null) {
      return tabletPadding;
    } else if (width >= 600 && mobilePadding != null) {
      return mobilePadding;
    }

    return mobilePadding ?? allMd;
  }

  /// Responsive margin berdasarkan screen size
  static EdgeInsets responsiveMargin({
    required BuildContext context,
    EdgeInsets? mobileMargin,
    EdgeInsets? tabletMargin,
    EdgeInsets? desktopMargin,
    EdgeInsets? largeDesktopMargin,
  }) {
    final width = MediaQuery.of(context).size.width;

    if (width >= 1600 && largeDesktopMargin != null) {
      return largeDesktopMargin;
    } else if (width >= 1200 && desktopMargin != null) {
      return desktopMargin;
    } else if (width >= 900 && tabletMargin != null) {
      return tabletMargin;
    } else if (width >= 600 && mobileMargin != null) {
      return mobileMargin;
    }

    return mobileMargin ?? marginMd;
  }

  /// Responsive gap berdasarkan screen size
  static SizedBox responsiveGap({
    required BuildContext context,
    double? mobileGap,
    double? tabletGap,
    double? desktopGap,
    double? largeDesktopGap,
  }) {
    final width = MediaQuery.of(context).size.width;
    double gap;

    if (width >= 1600 && largeDesktopGap != null) {
      gap = largeDesktopGap;
    } else if (width >= 1200 && desktopGap != null) {
      gap = desktopGap;
    } else if (width >= 900 && tabletGap != null) {
      gap = tabletGap;
    } else if (width >= 600 && mobileGap != null) {
      gap = mobileGap;
    } else {
      gap = mobileGap ?? md;
    }

    return SizedBox(width: gap, height: gap);
  }

  // ========================================
  // UTILITY METHODS
  // ========================================

  /// Membuat EdgeInsets dengan nilai yang sama untuk semua sisi
  static EdgeInsets all(double value) => EdgeInsets.all(value);

  /// Membuat EdgeInsets dengan nilai yang berbeda untuk setiap sisi
  static EdgeInsets only({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) => EdgeInsets.only(
    left: left ?? 0,
    top: top ?? 0,
    right: right ?? 0,
    bottom: bottom ?? 0,
  );

  /// Membuat EdgeInsets symmetric
  static EdgeInsets symmetric({double? horizontal, double? vertical}) =>
      EdgeInsets.symmetric(
        horizontal: horizontal ?? 0,
        vertical: vertical ?? 0,
      );

  /// Membuat SizedBox dengan width dan height yang sama
  static SizedBox box(double value) => SizedBox(width: value, height: value);

  /// Membuat SizedBox dengan width tertentu
  static SizedBox width(double value) => SizedBox(width: value);

  /// Membuat SizedBox dengan height tertentu
  static SizedBox height(double value) => SizedBox(height: value);

  // ========================================
  // COMMON SPACING PATTERNS
  // ========================================

  /// Spacing untuk section
  static const EdgeInsets sectionPadding = EdgeInsets.all(lg);
  static const EdgeInsets sectionMargin = EdgeInsets.only(bottom: xl);

  /// Spacing untuk content area
  static const EdgeInsets contentPadding = EdgeInsets.all(md);
  static const EdgeInsets contentMargin = EdgeInsets.only(bottom: lg);

  /// Spacing untuk form
  static const EdgeInsets formPadding = EdgeInsets.all(lg);
  static const EdgeInsets formFieldSpacing = EdgeInsets.only(bottom: md);

  /// Spacing untuk list
  static const EdgeInsets listPadding = EdgeInsets.all(md);
  static const EdgeInsets listItemSpacing = EdgeInsets.only(bottom: sm);

  /// Spacing untuk grid
  static const EdgeInsets gridPadding = EdgeInsets.all(md);
  static const EdgeInsets gridItemSpacing = EdgeInsets.all(sm);

  /// Spacing untuk navigation
  static const EdgeInsets navPadding = EdgeInsets.symmetric(
    horizontal: md,
    vertical: sm,
  );
  static const EdgeInsets navItemSpacing = EdgeInsets.only(right: md);

  /// Spacing untuk footer
  static const EdgeInsets footerPadding = EdgeInsets.all(lg);
  static const EdgeInsets footerMargin = EdgeInsets.only(top: xl);

  // ========================================
  // BREAKPOINT-BASED SPACING
  // ========================================

  /// Spacing yang menyesuaikan dengan breakpoint
  static double getBreakpointSpacing({
    required BuildContext context,
    double mobile = md,
    double tablet = lg,
    double desktop = xl,
    double largeDesktop = xxl,
  }) {
    final width = MediaQuery.of(context).size.width;

    if (width >= 1600) {
      return largeDesktop;
    } else if (width >= 1200) {
      return desktop;
    } else if (width >= 900) {
      return tablet;
    } else if (width >= 600) {
      return mobile;
    }

    return mobile;
  }

  /// Padding yang menyesuaikan dengan breakpoint
  static EdgeInsets getBreakpointPadding({
    required BuildContext context,
    EdgeInsets mobile = allMd,
    EdgeInsets tablet = allLg,
    EdgeInsets desktop = allXl,
    EdgeInsets largeDesktop = allXxl,
  }) {
    final width = MediaQuery.of(context).size.width;

    if (width >= 1600) {
      return largeDesktop;
    } else if (width >= 1200) {
      return desktop;
    } else if (width >= 900) {
      return tablet;
    } else if (width >= 600) {
      return mobile;
    }

    return mobile;
  }
}

/// Extension untuk memudahkan penggunaan spacing
extension SpacingExtension on Widget {
  /// Menambahkan padding
  Widget padding(EdgeInsets padding) => Padding(padding: padding, child: this);

  /// Menambahkan margin
  Widget margin(EdgeInsets margin) => Container(margin: margin, child: this);

  /// Menambahkan padding all
  Widget paddingAll(double value) =>
      Padding(padding: EdgeInsets.all(value), child: this);

  /// Menambahkan padding horizontal
  Widget paddingHorizontal(double value) => Padding(
    padding: EdgeInsets.symmetric(horizontal: value),
    child: this,
  );

  /// Menambahkan padding vertical
  Widget paddingVertical(double value) => Padding(
    padding: EdgeInsets.symmetric(vertical: value),
    child: this,
  );

  /// Menambahkan margin all
  Widget marginAll(double value) =>
      Container(margin: EdgeInsets.all(value), child: this);

  /// Menambahkan margin horizontal
  Widget marginHorizontal(double value) => Container(
    margin: EdgeInsets.symmetric(horizontal: value),
    child: this,
  );

  /// Menambahkan margin vertical
  Widget marginVertical(double value) => Container(
    margin: EdgeInsets.symmetric(vertical: value),
    child: this,
  );
}
