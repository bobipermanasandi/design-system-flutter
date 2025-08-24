import 'package:flutter/material.dart';
import '../constant/app_colors.dart';

/// Yokapos Design System - Reusable UI Components
/// This file contains all the reusable UI components for the app
class AppComponents {
  // ========================================
  // BUTTONS
  // ========================================

  /// Primary button with gradient background
  static Widget primaryButton({
    required String text,
    required VoidCallback onPressed,
    bool isLoading = false,
    double? width,
    double height = 48,
    EdgeInsetsGeometry? padding,
  }) {
    return Container(
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
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 24),
        ),
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
                ),
              )
            : Text(
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
  }

  /// Secondary button with outline
  static Widget secondaryButton({
    required String text,
    required VoidCallback onPressed,
    bool isLoading = false,
    double? width,
    double height = 48,
    EdgeInsetsGeometry? padding,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: isLoading ? null : onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary, width: 1.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 24),
        ),
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                ),
              )
            : Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Noto Sans',
                ),
              ),
      ),
    );
  }

  /// Text button
  static Widget textButton({
    required String text,
    required VoidCallback onPressed,
    Color? textColor,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: textColor ?? AppColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? FontWeight.w500,
          fontFamily: 'Noto Sans',
        ),
      ),
    );
  }

  // ========================================
  // CARDS
  // ========================================

  /// Standard card with shadow and border
  static Widget card({
    required Widget child,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    double? elevation,
    Color? backgroundColor,
    BorderRadius? borderRadius,
    VoidCallback? onTap,
  }) {
    Widget cardContent = Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.cardBackground,
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(16),
        child: child,
      ),
    );

    if (onTap != null) {
      return GestureDetector(onTap: onTap, child: cardContent);
    }

    return cardContent;
  }

  /// Product card for displaying items
  static Widget productCard({
    required String title,
    required String price,
    String? imageUrl,
    String? description,
    VoidCallback? onTap,
    Widget? trailing,
  }) {
    return card(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (imageUrl != null)
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                        fontFamily: 'Noto Sans',
                      ),
                    ),
                    if (description != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppColors.textSecondary,
                          fontFamily: 'Noto Sans',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ],
                ),
              ),
              if (trailing != null) trailing,
            ],
          ),
          const SizedBox(height: 8),
          Text(
            price,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
              fontFamily: 'Noto Sans',
            ),
          ),
        ],
      ),
    );
  }

  // ========================================
  // INPUT FIELDS
  // ========================================

  /// Standard text input field
  static Widget textField({
    required String label,
    String? hint,
    TextEditingController? controller,
    TextInputType? keyboardType,
    bool obscureText = false,
    Widget? prefixIcon,
    Widget? suffixIcon,
    String? Function(String?)? validator,
    void Function(String)? onChanged,
    int? maxLines,
    int? maxLength,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      maxLines: maxLines ?? 1,
      maxLength: maxLength,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: AppColors.backgroundSecondary,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.red, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.red, width: 2),
        ),
        labelStyle: const TextStyle(
          color: AppColors.textSecondary,
          fontSize: 14,
          fontFamily: 'Noto Sans',
        ),
        hintStyle: const TextStyle(
          color: AppColors.textSecondary,
          fontSize: 14,
          fontFamily: 'Noto Sans',
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),
    );
  }

  /// Search input field
  static Widget searchField({
    required String hint,
    TextEditingController? controller,
    void Function(String)? onChanged,
    VoidCallback? onClear,
  }) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: const Icon(Icons.search, color: AppColors.textSecondary),
        suffixIcon: controller?.text.isNotEmpty == true
            ? IconButton(
                icon: const Icon(Icons.clear, color: AppColors.textSecondary),
                onPressed: onClear,
              )
            : null,
        filled: true,
        fillColor: AppColors.backgroundSecondary,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        hintStyle: const TextStyle(
          color: AppColors.textSecondary,
          fontSize: 14,
          fontFamily: 'Noto Sans',
        ),
      ),
    );
  }

  // ========================================
  // CHIPS
  // ========================================

  /// Filter chip for categories
  static Widget filterChip({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
    Color? selectedColor,
  }) {
    return FilterChip(
      label: Text(
        label,
        style: TextStyle(
          color: isSelected ? AppColors.white : AppColors.textPrimary,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Noto Sans',
        ),
      ),
      selected: isSelected,
      onSelected: (_) => onTap(),
      backgroundColor: AppColors.backgroundSecondary,
      selectedColor: selectedColor ?? AppColors.primary,
      checkmarkColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: isSelected ? AppColors.primary : AppColors.border,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    );
  }

  /// Action chip for quick actions
  static Widget actionChip({
    required String label,
    required VoidCallback onTap,
    Widget? avatar,
    Color? backgroundColor,
  }) {
    return ActionChip(
      label: Text(
        label,
        style: const TextStyle(
          color: AppColors.textPrimary,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Noto Sans',
        ),
      ),
      avatar: avatar,
      onPressed: onTap,
      backgroundColor: backgroundColor ?? AppColors.backgroundSecondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: AppColors.border),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    );
  }

  // ========================================
  // BADGES
  // ========================================

  /// Status badge for different states
  static Widget statusBadge({
    required String text,
    required BadgeType type,
    double? fontSize,
  }) {
    Color backgroundColor;
    Color textColor;

    switch (type) {
      case BadgeType.success:
        backgroundColor = AppColors.green;
        textColor = AppColors.white;
        break;
      case BadgeType.error:
        backgroundColor = AppColors.red;
        textColor = AppColors.white;
        break;
      case BadgeType.warning:
        backgroundColor = AppColors.yellow;
        textColor = AppColors.black;
        break;
      case BadgeType.info:
        backgroundColor = AppColors.blue;
        textColor = AppColors.white;
        break;
      case BadgeType.primary:
        backgroundColor = AppColors.primary;
        textColor = AppColors.white;
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize ?? 12,
          fontWeight: FontWeight.w500,
          fontFamily: 'Noto Sans',
        ),
      ),
    );
  }

  // ========================================
  // LOADING INDICATORS
  // ========================================

  /// Loading spinner with custom color
  static Widget loadingSpinner({
    Color? color,
    double? size,
    double strokeWidth = 2,
  }) {
    return SizedBox(
      width: size ?? 24,
      height: size ?? 24,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
        valueColor: AlwaysStoppedAnimation<Color>(color ?? AppColors.primary),
      ),
    );
  }

  /// Skeleton loading for cards
  static Widget skeletonCard({double height = 120, double? width}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.backgroundSecondary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
        ),
      ),
    );
  }

  // ========================================
  // DIVIDERS
  // ========================================

  /// Standard divider
  static Widget divider({
    double? thickness,
    Color? color,
    EdgeInsetsGeometry? margin,
  }) {
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(vertical: 8),
      child: Divider(
        thickness: thickness ?? 1,
        color: color ?? AppColors.border,
      ),
    );
  }

  /// Vertical divider
  static Widget verticalDivider({
    double? thickness,
    Color? color,
    double? height,
  }) {
    return Container(
      height: height ?? 24,
      width: thickness ?? 1,
      color: color ?? AppColors.border,
    );
  }

  // ========================================
  // SPACERS
  // ========================================

  /// Horizontal spacer
  static Widget hSpacer(double width) {
    return SizedBox(width: width);
  }

  /// Vertical spacer
  static Widget vSpacer(double height) {
    return SizedBox(height: height);
  }

  /// Standard spacing
  static const Widget spacer8 = SizedBox(height: 8);
  static const Widget spacer16 = SizedBox(height: 16);
  static const Widget spacer24 = SizedBox(height: 24);
  static const Widget spacer32 = SizedBox(height: 32);
}

/// Badge types for status badges
enum BadgeType { success, error, warning, info, primary }
