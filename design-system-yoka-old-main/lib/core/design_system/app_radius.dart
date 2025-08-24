import 'package:flutter/material.dart';

/// Border Radius System untuk Yokapos
/// Phase 3 - Comprehensive border radius dengan responsive design
class AppRadius {
  // ========================================
  // RADIUS SCALE
  // ========================================
  
  /// None - 0px
  static const double none = 0;
  
  /// Extra Small - 2px
  static const double xs = 2;
  
  /// Small - 4px
  static const double sm = 4;
  
  /// Medium - 8px
  static const double md = 8;
  
  /// Large - 12px
  static const double lg = 12;
  
  /// Extra Large - 16px
  static const double xl = 16;
  
  /// Extra Extra Large - 20px
  static const double xxl = 20;
  
  /// Huge - 24px
  static const double huge = 24;
  
  /// Massive - 32px
  static const double massive = 32;
  
  /// Full - 999px (untuk circular shapes)
  static const double full = 999;

  // ========================================
  // BORDER RADIUS OBJECTS
  // ========================================
  
  /// Border radius untuk semua sudut
  static const BorderRadius noneRadius = BorderRadius.zero;
  static const BorderRadius xsRadius = BorderRadius.all(Radius.circular(xs));
  static const BorderRadius smRadius = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius mdRadius = BorderRadius.all(Radius.circular(md));
  static const BorderRadius lgRadius = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius xlRadius = BorderRadius.all(Radius.circular(xl));
  static const BorderRadius xxlRadius = BorderRadius.all(Radius.circular(xxl));
  static const BorderRadius hugeRadius = BorderRadius.all(Radius.circular(huge));
  static const BorderRadius massiveRadius = BorderRadius.all(Radius.circular(massive));
  static const BorderRadius fullRadius = BorderRadius.all(Radius.circular(full));

  // ========================================
  // COMPONENT-SPECIFIC RADIUS
  // ========================================
  
  /// Border radius untuk button
  static const BorderRadius buttonRadius = BorderRadius.all(Radius.circular(md));
  static const BorderRadius buttonRadiusSmall = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius buttonRadiusLarge = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius buttonRadiusPill = BorderRadius.all(Radius.circular(full));

  /// Border radius untuk card
  static const BorderRadius cardRadius = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius cardRadiusSmall = BorderRadius.all(Radius.circular(md));
  static const BorderRadius cardRadiusLarge = BorderRadius.all(Radius.circular(xl));

  /// Border radius untuk input field
  static const BorderRadius inputRadius = BorderRadius.all(Radius.circular(md));
  static const BorderRadius inputRadiusSmall = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius inputRadiusLarge = BorderRadius.all(Radius.circular(lg));

  /// Border radius untuk modal
  static const BorderRadius modalRadius = BorderRadius.all(Radius.circular(xl));
  static const BorderRadius modalRadiusSmall = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius modalRadiusLarge = BorderRadius.all(Radius.circular(xxl));

  /// Border radius untuk chip
  static const BorderRadius chipRadius = BorderRadius.all(Radius.circular(full));
  static const BorderRadius chipRadiusSmall = BorderRadius.all(Radius.circular(md));
  static const BorderRadius chipRadiusLarge = BorderRadius.all(Radius.circular(lg));

  /// Border radius untuk badge
  static const BorderRadius badgeRadius = BorderRadius.all(Radius.circular(full));
  static const BorderRadius badgeRadiusSmall = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius badgeRadiusLarge = BorderRadius.all(Radius.circular(md));

  /// Border radius untuk avatar
  static const BorderRadius avatarRadius = BorderRadius.all(Radius.circular(full));
  static const BorderRadius avatarRadiusSmall = BorderRadius.all(Radius.circular(md));
  static const BorderRadius avatarRadiusLarge = BorderRadius.all(Radius.circular(lg));

  /// Border radius untuk image
  static const BorderRadius imageRadius = BorderRadius.all(Radius.circular(md));
  static const BorderRadius imageRadiusSmall = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius imageRadiusLarge = BorderRadius.all(Radius.circular(lg));

  /// Border radius untuk navigation
  static const BorderRadius navRadius = BorderRadius.all(Radius.circular(md));
  static const BorderRadius navRadiusSmall = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius navRadiusLarge = BorderRadius.all(Radius.circular(lg));

  // ========================================
  // DIRECTIONAL RADIUS
  // ========================================
  
  /// Border radius untuk top corners
  static BorderRadius topRadius(double radius) => BorderRadius.only(
    topLeft: Radius.circular(radius),
    topRight: Radius.circular(radius),
  );

  /// Border radius untuk bottom corners
  static BorderRadius bottomRadius(double radius) => BorderRadius.only(
    bottomLeft: Radius.circular(radius),
    bottomRight: Radius.circular(radius),
  );

  /// Border radius untuk left corners
  static BorderRadius leftRadius(double radius) => BorderRadius.only(
    topLeft: Radius.circular(radius),
    bottomLeft: Radius.circular(radius),
  );

  /// Border radius untuk right corners
  static BorderRadius rightRadius(double radius) => BorderRadius.only(
    topRight: Radius.circular(radius),
    bottomRight: Radius.circular(radius),
  );

  /// Border radius untuk top-left corner
  static BorderRadius topLeftRadius(double radius) => BorderRadius.only(
    topLeft: Radius.circular(radius),
  );

  /// Border radius untuk top-right corner
  static BorderRadius topRightRadius(double radius) => BorderRadius.only(
    topRight: Radius.circular(radius),
  );

  /// Border radius untuk bottom-left corner
  static BorderRadius bottomLeftRadius(double radius) => BorderRadius.only(
    bottomLeft: Radius.circular(radius),
  );

  /// Border radius untuk bottom-right corner
  static BorderRadius bottomRightRadius(double radius) => BorderRadius.only(
    bottomRight: Radius.circular(radius),
  );

  // ========================================
  // COMMON DIRECTIONAL RADIUS
  // ========================================
  
  /// Border radius untuk bottom sheet
  static const BorderRadius bottomSheetRadius = BorderRadius.only(
    topLeft: Radius.circular(xl),
    topRight: Radius.circular(xl),
  );

  /// Border radius untuk dropdown
  static const BorderRadius dropdownRadius = BorderRadius.only(
    bottomLeft: Radius.circular(md),
    bottomRight: Radius.circular(md),
  );

  /// Border radius untuk tooltip
  static const BorderRadius tooltipRadius = BorderRadius.all(Radius.circular(sm));

  /// Border radius untuk snackbar
  static const BorderRadius snackbarRadius = BorderRadius.all(Radius.circular(md));

  /// Border radius untuk dialog
  static const BorderRadius dialogRadius = BorderRadius.all(Radius.circular(xl));

  /// Border radius untuk floating action button
  static const BorderRadius fabRadius = BorderRadius.all(Radius.circular(full));

  // ========================================
  // RESPONSIVE RADIUS
  // ========================================
  
  /// Responsive border radius berdasarkan screen size
  static BorderRadius responsiveRadius({
    required BuildContext context,
    double? mobileRadius,
    double? tabletRadius,
    double? desktopRadius,
    double? largeDesktopRadius,
  }) {
    final width = MediaQuery.of(context).size.width;
    double radius;
    
    if (width >= 1600 && largeDesktopRadius != null) {
      radius = largeDesktopRadius;
    } else if (width >= 1200 && desktopRadius != null) {
      radius = desktopRadius;
    } else if (width >= 900 && tabletRadius != null) {
      radius = tabletRadius;
    } else if (width >= 600 && mobileRadius != null) {
      radius = mobileRadius;
    } else {
      radius = mobileRadius ?? md;
    }
    
    return BorderRadius.all(Radius.circular(radius));
  }

  /// Responsive component radius
  static BorderRadius responsiveComponentRadius({
    required BuildContext context,
    BorderRadius? mobileRadius,
    BorderRadius? tabletRadius,
    BorderRadius? desktopRadius,
    BorderRadius? largeDesktopRadius,
  }) {
    final width = MediaQuery.of(context).size.width;
    
    if (width >= 1600 && largeDesktopRadius != null) {
      return largeDesktopRadius;
    } else if (width >= 1200 && desktopRadius != null) {
      return desktopRadius;
    } else if (width >= 900 && tabletRadius != null) {
      return tabletRadius;
    } else if (width >= 600 && mobileRadius != null) {
      return mobileRadius;
    }
    
    return mobileRadius ?? mdRadius;
  }

  // ========================================
  // UTILITY METHODS
  // ========================================
  
  /// Membuat BorderRadius dengan nilai yang sama untuk semua sudut
  static BorderRadius all(double radius) => BorderRadius.all(Radius.circular(radius));
  
  /// Membuat BorderRadius dengan nilai yang berbeda untuk setiap sudut
  static BorderRadius only({
    double? topLeft,
    double? topRight,
    double? bottomLeft,
    double? bottomRight,
  }) => BorderRadius.only(
    topLeft: topLeft != null ? Radius.circular(topLeft) : Radius.zero,
    topRight: topRight != null ? Radius.circular(topRight) : Radius.zero,
    bottomLeft: bottomLeft != null ? Radius.circular(bottomLeft) : Radius.zero,
    bottomRight: bottomRight != null ? Radius.circular(bottomRight) : Radius.zero,
  );
  
  /// Membuat BorderRadius symmetric
  static BorderRadius symmetric({
    double? horizontal,
    double? vertical,
  }) => BorderRadius.only(
    topLeft: vertical != null ? Radius.circular(vertical) : Radius.zero,
    topRight: horizontal != null ? Radius.circular(horizontal) : Radius.zero,
    bottomLeft: horizontal != null ? Radius.circular(horizontal) : Radius.zero,
    bottomRight: vertical != null ? Radius.circular(vertical) : Radius.zero,
  );

  /// Membuat Radius object
  static Radius radius(double value) => Radius.circular(value);

  // ========================================
  // BREAKPOINT-BASED RADIUS
  // ========================================
  
  /// Radius yang menyesuaikan dengan breakpoint
  static double getBreakpointRadius({
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

  /// Border radius yang menyesuaikan dengan breakpoint
  static BorderRadius getBreakpointBorderRadius({
    required BuildContext context,
    BorderRadius mobile = mdRadius,
    BorderRadius tablet = lgRadius,
    BorderRadius desktop = xlRadius,
    BorderRadius largeDesktop = xxlRadius,
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

  // ========================================
  // THEME-BASED RADIUS
  // ========================================
  
  /// Border radius berdasarkan tema (light/dark)
  static BorderRadius themeRadius({
    required BuildContext context,
    BorderRadius? lightRadius,
    BorderRadius? darkRadius,
  }) {
    final brightness = Theme.of(context).brightness;
    
    if (brightness == Brightness.dark && darkRadius != null) {
      return darkRadius;
    }
    
    return lightRadius ?? mdRadius;
  }

  /// Radius berdasarkan tema
  static double themeRadiusValue({
    required BuildContext context,
    double? lightRadius,
    double? darkRadius,
  }) {
    final brightness = Theme.of(context).brightness;
    
    if (brightness == Brightness.dark && darkRadius != null) {
      return darkRadius;
    }
    
    return lightRadius ?? md;
  }

  // ========================================
  // ANIMATION RADIUS
  // ========================================
  
  /// Border radius untuk animasi
  static BorderRadius animatedRadius({
    required double value,
    double minRadius = none,
    double maxRadius = full,
  }) {
    final radius = minRadius + (maxRadius - minRadius) * value;
    return BorderRadius.all(Radius.circular(radius));
  }

  /// Radius untuk animasi
  static double animatedRadiusValue({
    required double value,
    double minRadius = none,
    double maxRadius = full,
  }) {
    return minRadius + (maxRadius - minRadius) * value;
  }
}

/// Extension untuk memudahkan penggunaan border radius
extension RadiusExtension on Widget {
  /// Menambahkan border radius
  Widget borderRadius(BorderRadius radius) => ClipRRect(
    borderRadius: radius,
    child: this,
  );
  
  /// Menambahkan border radius dengan nilai
  Widget borderRadiusValue(double radius) => ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(radius)),
    child: this,
  );
  
  /// Menambahkan border radius untuk semua sudut
  Widget borderRadiusAll(double radius) => ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(radius)),
    child: this,
  );
  
  /// Menambahkan border radius untuk sudut tertentu
  Widget borderRadiusOnly({
    double? topLeft,
    double? topRight,
    double? bottomLeft,
    double? bottomRight,
  }) => ClipRRect(
    borderRadius: BorderRadius.only(
      topLeft: topLeft != null ? Radius.circular(topLeft) : Radius.zero,
      topRight: topRight != null ? Radius.circular(topRight) : Radius.zero,
      bottomLeft: bottomLeft != null ? Radius.circular(bottomLeft) : Radius.zero,
      bottomRight: bottomRight != null ? Radius.circular(bottomRight) : Radius.zero,
    ),
    child: this,
  );
  
  /// Menambahkan circular border radius
  Widget circularRadius() => ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(AppRadius.full)),
    child: this,
  );
} 