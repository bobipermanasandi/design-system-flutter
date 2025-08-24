import 'package:flutter/material.dart';
import '../constant/app_colors.dart';

/// Typography System untuk Yokapos
/// Phase 3 - Advanced Typography dengan responsive design
class AppTypography {
  // ========================================
  // FONT FAMILIES
  // ========================================
  static const String primaryFont = 'Noto Sans';
  static const String secondaryFont = 'Inter';
  static const String monospaceFont = 'JetBrains Mono';

  // ========================================
  // FONT WEIGHTS
  // ========================================
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;

  // ========================================
  // HEADING STYLES
  // ========================================
  
  /// Heading 1 - Display text untuk judul utama
  static const TextStyle heading1 = TextStyle(
    fontSize: 48,
    fontWeight: bold,
    fontFamily: primaryFont,
    color: AppColors.textPrimary,
    height: 1.2,
    letterSpacing: -0.5,
  );

  /// Heading 2 - Judul section utama
  static const TextStyle heading2 = TextStyle(
    fontSize: 36,
    fontWeight: bold,
    fontFamily: primaryFont,
    color: AppColors.textPrimary,
    height: 1.3,
    letterSpacing: -0.25,
  );

  /// Heading 3 - Judul subsection
  static const TextStyle heading3 = TextStyle(
    fontSize: 28,
    fontWeight: semiBold,
    fontFamily: primaryFont,
    color: AppColors.textPrimary,
    height: 1.4,
    letterSpacing: 0,
  );

  /// Heading 4 - Judul card atau modal
  static const TextStyle heading4 = TextStyle(
    fontSize: 24,
    fontWeight: semiBold,
    fontFamily: primaryFont,
    color: AppColors.textPrimary,
    height: 1.4,
    letterSpacing: 0,
  );

  /// Heading 5 - Judul list atau table
  static const TextStyle heading5 = TextStyle(
    fontSize: 20,
    fontWeight: medium,
    fontFamily: primaryFont,
    color: AppColors.textPrimary,
    height: 1.5,
    letterSpacing: 0,
  );

  /// Heading 6 - Judul kecil atau label
  static const TextStyle heading6 = TextStyle(
    fontSize: 18,
    fontWeight: medium,
    fontFamily: primaryFont,
    color: AppColors.textPrimary,
    height: 1.5,
    letterSpacing: 0,
  );

  // ========================================
  // BODY TEXT STYLES
  // ========================================
  
  /// Body 1 - Text utama untuk konten
  static const TextStyle body1 = TextStyle(
    fontSize: 16,
    fontWeight: regular,
    fontFamily: primaryFont,
    color: AppColors.textPrimary,
    height: 1.6,
    letterSpacing: 0.15,
  );

  /// Body 2 - Text secondary untuk deskripsi
  static const TextStyle body2 = TextStyle(
    fontSize: 14,
    fontWeight: regular,
    fontFamily: primaryFont,
    color: AppColors.textSecondary,
    height: 1.6,
    letterSpacing: 0.25,
  );

  /// Body 3 - Text kecil untuk caption
  static const TextStyle body3 = TextStyle(
    fontSize: 12,
    fontWeight: regular,
    fontFamily: primaryFont,
    color: AppColors.textSecondary,
    height: 1.5,
    letterSpacing: 0.4,
  );

  // ========================================
  // BUTTON TEXT STYLES
  // ========================================
  
  /// Button text untuk primary buttons
  static const TextStyle buttonPrimary = TextStyle(
    fontSize: 16,
    fontWeight: medium,
    fontFamily: primaryFont,
    color: AppColors.white,
    height: 1.2,
    letterSpacing: 0.5,
  );

  /// Button text untuk secondary buttons
  static const TextStyle buttonSecondary = TextStyle(
    fontSize: 16,
    fontWeight: medium,
    fontFamily: primaryFont,
    color: AppColors.primary,
    height: 1.2,
    letterSpacing: 0.5,
  );

  /// Button text untuk text buttons
  static const TextStyle buttonText = TextStyle(
    fontSize: 14,
    fontWeight: medium,
    fontFamily: primaryFont,
    color: AppColors.primary,
    height: 1.2,
    letterSpacing: 0.25,
  );

  // ========================================
  // INPUT TEXT STYLES
  // ========================================
  
  /// Input text untuk form fields
  static const TextStyle input = TextStyle(
    fontSize: 16,
    fontWeight: regular,
    fontFamily: primaryFont,
    color: AppColors.textPrimary,
    height: 1.5,
    letterSpacing: 0.15,
  );

  /// Input label untuk form fields
  static const TextStyle inputLabel = TextStyle(
    fontSize: 14,
    fontWeight: medium,
    fontFamily: primaryFont,
    color: AppColors.textPrimary,
    height: 1.4,
    letterSpacing: 0.1,
  );

  /// Input hint untuk form fields
  static const TextStyle inputHint = TextStyle(
    fontSize: 16,
    fontWeight: regular,
    fontFamily: primaryFont,
    color: AppColors.textSecondary,
    height: 1.5,
    letterSpacing: 0.15,
  );

  // ========================================
  // CAPTION & OVERLINE STYLES
  // ========================================
  
  /// Caption untuk text kecil
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: regular,
    fontFamily: primaryFont,
    color: AppColors.textSecondary,
    height: 1.4,
    letterSpacing: 0.4,
  );

  /// Overline untuk text sangat kecil
  static const TextStyle overline = TextStyle(
    fontSize: 10,
    fontWeight: medium,
    fontFamily: primaryFont,
    color: AppColors.textSecondary,
    height: 1.6,
    letterSpacing: 1.5,
  );

  // ========================================
  // MONOSPACE STYLES
  // ========================================
  
  /// Monospace untuk code atau data
  static const TextStyle monospace = TextStyle(
    fontSize: 14,
    fontWeight: regular,
    fontFamily: monospaceFont,
    color: AppColors.textPrimary,
    height: 1.5,
    letterSpacing: 0,
  );

  /// Monospace kecil untuk code
  static const TextStyle monospaceSmall = TextStyle(
    fontSize: 12,
    fontWeight: regular,
    fontFamily: monospaceFont,
    color: AppColors.textSecondary,
    height: 1.4,
    letterSpacing: 0,
  );

  // ========================================
  // RESPONSIVE TYPOGRAPHY
  // ========================================
  
  /// Responsive heading style berdasarkan screen size
  static TextStyle responsiveHeading({
    required BuildContext context,
    TextStyle? mobileStyle,
    TextStyle? tabletStyle,
    TextStyle? desktopStyle,
    TextStyle? largeDesktopStyle,
  }) {
    final width = MediaQuery.of(context).size.width;
    
    if (width >= 1600 && largeDesktopStyle != null) {
      return largeDesktopStyle;
    } else if (width >= 1200 && desktopStyle != null) {
      return desktopStyle;
    } else if (width >= 900 && tabletStyle != null) {
      return tabletStyle;
    } else if (width >= 600 && mobileStyle != null) {
      return mobileStyle;
    }
    
    return mobileStyle ?? heading1;
  }

  /// Responsive body text style
  static TextStyle responsiveBody({
    required BuildContext context,
    TextStyle? mobileStyle,
    TextStyle? tabletStyle,
    TextStyle? desktopStyle,
  }) {
    final width = MediaQuery.of(context).size.width;
    
    if (width >= 1200 && desktopStyle != null) {
      return desktopStyle;
    } else if (width >= 900 && tabletStyle != null) {
      return tabletStyle;
    }
    
    return mobileStyle ?? body1;
  }

  // ========================================
  // UTILITY METHODS
  // ========================================
  
  /// Mengubah warna text style
  static TextStyle withColor(TextStyle style, Color color) {
    return style.copyWith(color: color);
  }

  /// Mengubah font weight text style
  static TextStyle withWeight(TextStyle style, FontWeight weight) {
    return style.copyWith(fontWeight: weight);
  }

  /// Mengubah font size text style
  static TextStyle withSize(TextStyle style, double size) {
    return style.copyWith(fontSize: size);
  }

  /// Mengubah letter spacing text style
  static TextStyle withLetterSpacing(TextStyle style, double spacing) {
    return style.copyWith(letterSpacing: spacing);
  }

  /// Mengubah line height text style
  static TextStyle withHeight(TextStyle style, double height) {
    return style.copyWith(height: height);
  }

  /// Mengubah font family text style
  static TextStyle withFontFamily(TextStyle style, String fontFamily) {
    return style.copyWith(fontFamily: fontFamily);
  }

  // ========================================
  // SEMANTIC TEXT STYLES
  // ========================================
  
  /// Text style untuk success messages
  static TextStyle get success => body2.copyWith(
    color: AppColors.success,
    fontWeight: medium,
  );

  /// Text style untuk error messages
  static TextStyle get error => body2.copyWith(
    color: AppColors.error,
    fontWeight: medium,
  );

  /// Text style untuk warning messages
  static TextStyle get warning => body2.copyWith(
    color: AppColors.warning,
    fontWeight: medium,
  );

  /// Text style untuk info messages
  static TextStyle get info => body2.copyWith(
    color: AppColors.info,
    fontWeight: medium,
  );

  /// Text style untuk disabled text
  static TextStyle get disabled => body2.copyWith(
    color: AppColors.disabledText,
    fontWeight: regular,
  );

  /// Text style untuk link text
  static TextStyle get link => body2.copyWith(
    color: AppColors.primary,
    fontWeight: medium,
    decoration: TextDecoration.underline,
  );

  // ========================================
  // PRICE TEXT STYLES
  // ========================================
  
  /// Text style untuk harga besar
  static TextStyle get priceLarge => TextStyle(
    fontSize: 32,
    fontWeight: bold,
    fontFamily: primaryFont,
    color: AppColors.textPrimary,
    height: 1.2,
    letterSpacing: -0.5,
  );

  /// Text style untuk harga medium
  static TextStyle get priceMedium => TextStyle(
    fontSize: 24,
    fontWeight: semiBold,
    fontFamily: primaryFont,
    color: AppColors.textPrimary,
    height: 1.3,
    letterSpacing: 0,
  );

  /// Text style untuk harga kecil
  static TextStyle get priceSmall => TextStyle(
    fontSize: 18,
    fontWeight: medium,
    fontFamily: primaryFont,
    color: AppColors.textPrimary,
    height: 1.4,
    letterSpacing: 0,
  );

  /// Text style untuk harga yang dicoret
  static TextStyle get priceStrikethrough => TextStyle(
    fontSize: 16,
    fontWeight: regular,
    fontFamily: primaryFont,
    color: AppColors.textSecondary,
    height: 1.5,
    letterSpacing: 0.15,
    decoration: TextDecoration.lineThrough,
  );
}

/// Extension untuk memudahkan penggunaan typography
extension TypographyExtension on TextStyle {
  /// Mengubah warna text style
  TextStyle withColor(Color color) => copyWith(color: color);
  
  /// Mengubah font weight
  TextStyle withWeight(FontWeight weight) => copyWith(fontWeight: weight);
  
  /// Mengubah font size
  TextStyle withSize(double size) => copyWith(fontSize: size);
  
  /// Mengubah letter spacing
  TextStyle withLetterSpacing(double spacing) => copyWith(letterSpacing: spacing);
  
  /// Mengubah line height
  TextStyle withHeight(double height) => copyWith(height: height);
  
  /// Mengubah font family
  TextStyle withFontFamily(String fontFamily) => copyWith(fontFamily: fontFamily);
  
  /// Menambahkan underline
  TextStyle get underlined => copyWith(decoration: TextDecoration.underline);
  
  /// Menambahkan strikethrough
  TextStyle get strikethrough => copyWith(decoration: TextDecoration.lineThrough);
  
  /// Menambahkan italic
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
} 