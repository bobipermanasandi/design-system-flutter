import 'package:flutter/material.dart';
import '../constant/app_colors.dart';
import 'app_animations.dart';
import 'app_components.dart';

/// Yokapos Advanced Components
/// Komponen UI tingkat lanjut untuk Phase 2
class AppAdvancedComponents {
  // ========================================
  // MODAL COMPONENTS
  // ========================================

  /// Confirmation dialog dengan animasi
  static Future<bool> showConfirmationDialog({
    required BuildContext context,
    required String title,
    required String message,
    String confirmText = 'Konfirmasi',
    String cancelText = 'Batal',
    Color? confirmColor,
    Color? cancelColor,
  }) async {
    return await showDialog<bool>(
          context: context,
          builder: (context) => AppAnimations.fadeIn(
            child: AlertDialog(
              title: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                  fontFamily: 'Noto Sans',
                ),
              ),
              content: Text(
                message,
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.textSecondary,
                  fontFamily: 'Noto Sans',
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  style: TextButton.styleFrom(
                    foregroundColor: cancelColor ?? AppColors.grey,
                  ),
                  child: Text(cancelText),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, true),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: confirmColor ?? AppColors.primary,
                    foregroundColor: AppColors.white,
                  ),
                  child: Text(confirmText),
                ),
              ],
            ),
          ),
        ) ??
        false;
  }

  /// Custom bottom sheet dengan animasi
  static Future<T?> showCustomBottomSheet<T>({
    required BuildContext context,
    required Widget child,
    bool isDismissible = true,
    bool enableDrag = true,
    double? maxHeight,
    Color? backgroundColor,
    BorderRadius? borderRadius,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      backgroundColor: Colors.transparent,
      builder: (context) => AppAnimations.slideInUp(
        child: Container(
          constraints: maxHeight != null
              ? BoxConstraints(maxHeight: maxHeight)
              : null,
          decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.white,
            borderRadius:
                borderRadius ??
                const BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: child,
        ),
      ),
    );
  }

  /// Loading overlay
  static void showLoadingOverlay({
    required BuildContext context,
    String message = 'Memuat...',
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AppAnimations.fadeIn(
        child: Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppAnimations.animatedLoadingSpinner(
                  size: 48,
                  color: AppColors.primary,
                ),
                const SizedBox(height: 16),
                Text(
                  message,
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.textPrimary,
                    fontFamily: 'Noto Sans',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Hide loading overlay
  static void hideLoadingOverlay(BuildContext context) {
    Navigator.of(context).pop();
  }

  // ========================================
  // FORM COMPONENTS
  // ========================================

  /// Form field dengan validation dan error handling
  static Widget formField({
    required String label,
    String? hint,
    TextEditingController? controller,
    TextInputType? keyboardType,
    bool obscureText = false,
    Widget? prefixIcon,
    Widget? suffixIcon,
    String? Function(String?)? validator,
    void Function(String)? onChanged,
    void Function(String)? onSubmitted,
    int? maxLines,
    int? maxLength,
    bool enabled = true,
    bool readOnly = false,
    FocusNode? focusNode,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
            fontFamily: 'Noto Sans',
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          validator: validator,
          onChanged: onChanged,
          onFieldSubmitted: onSubmitted,
          maxLines: maxLines ?? 1,
          maxLength: maxLength,
          enabled: enabled,
          readOnly: readOnly,
          focusNode: focusNode,
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: enabled
                ? AppColors.backgroundSecondary
                : AppColors.disabledBackground,
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
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.disabledBorder),
            ),
            hintStyle: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 14,
              fontFamily: 'Noto Sans',
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
        ),
      ],
    );
  }

  /// Date picker field
  static Widget datePickerField({
    required String label,
    required DateTime initialDate,
    required Function(DateTime) onDateSelected,
    DateTime? firstDate,
    DateTime? lastDate,
    String? hint,
    bool enabled = true,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
            fontFamily: 'Noto Sans',
          ),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: enabled
              ? () async {
                  final date = await showDatePicker(
                    context: navigatorKey.currentContext!,
                    initialDate: initialDate,
                    firstDate: firstDate ?? DateTime(1900),
                    lastDate: lastDate ?? DateTime(2100),
                    builder: (context, child) {
                      return Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: const ColorScheme.light(
                            primary: AppColors.primary,
                            onPrimary: AppColors.white,
                          ),
                        ),
                        child: child!,
                      );
                    },
                  );
                  if (date != null) {
                    onDateSelected(date);
                  }
                }
              : null,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: enabled
                  ? AppColors.backgroundSecondary
                  : AppColors.disabledBackground,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: enabled ? AppColors.border : AppColors.disabledBorder,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  color: enabled
                      ? AppColors.textSecondary
                      : AppColors.disabledText,
                  size: 20,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    hint ?? 'Pilih tanggal',
                    style: TextStyle(
                      color: enabled
                          ? AppColors.textSecondary
                          : AppColors.disabledText,
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Dropdown field
  static Widget dropdownField<T>({
    required String label,
    required List<DropdownItem<T>> items,
    required T? value,
    required Function(T?) onChanged,
    String? hint,
    bool enabled = true,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
            fontFamily: 'Noto Sans',
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: enabled
                ? AppColors.backgroundSecondary
                : AppColors.disabledBackground,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: enabled ? AppColors.border : AppColors.disabledBorder,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              value: value,
              onChanged: enabled ? onChanged : null,
              hint: Text(
                hint ?? 'Pilih opsi',
                style: TextStyle(
                  color: enabled
                      ? AppColors.textSecondary
                      : AppColors.disabledText,
                  fontSize: 14,
                  fontFamily: 'Noto Sans',
                ),
              ),
              items: items
                  .map(
                    (item) => DropdownMenuItem<T>(
                      value: item.value,
                      child: Text(
                        item.label,
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                        ),
                      ),
                    ),
                  )
                  .toList(),
              icon: Icon(
                Icons.arrow_drop_down,
                color: enabled
                    ? AppColors.textSecondary
                    : AppColors.disabledText,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ========================================
  // NAVIGATION COMPONENTS
  // ========================================

  /// Search app bar dengan animasi
  static PreferredSizeWidget searchAppBar({
    required String title,
    required TextEditingController searchController,
    required Function(String) onSearch,
    VoidCallback? onClear,
    List<Widget>? actions,
    bool showSearch = false,
  }) {
    return AppBar(
      title: showSearch
          ? AppAnimations.slideInRight(
              child: TextField(
                controller: searchController,
                onChanged: onSearch,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Cari...',
                  border: InputBorder.none,
                  hintStyle: const TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontFamily: 'Noto Sans',
                  ),
                  suffixIcon: searchController.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear, color: AppColors.white),
                          onPressed: onClear,
                        )
                      : null,
                ),
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontFamily: 'Noto Sans',
                ),
              ),
            )
          : Text(
              title,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'Noto Sans',
              ),
            ),
      actions: [
        if (!showSearch)
          IconButton(
            icon: const Icon(Icons.search, color: AppColors.white),
            onPressed: () {
              // Toggle search mode
            },
          ),
        if (actions != null) ...actions,
      ],
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      elevation: 0,
    );
  }

  /// Tab bar dengan animasi
  static Widget animatedTabBar({
    required List<String> tabs,
    required int currentIndex,
    required Function(int) onTap,
    Color? backgroundColor,
    Color? selectedColor,
    Color? unselectedColor,
  }) {
    return Container(
      color: backgroundColor ?? AppColors.white,
      child: Row(
        children: tabs.asMap().entries.map((entry) {
          final index = entry.key;
          final tab = entry.value;
          final isSelected = index == currentIndex;

          return Expanded(
            child: GestureDetector(
              onTap: () => onTap(index),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: isSelected
                          ? AppColors.primary
                          : Colors.transparent,
                      width: 2,
                    ),
                  ),
                ),
                child: AppAnimations.fadeIn(
                  child: Text(
                    tab,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isSelected
                          ? selectedColor ?? AppColors.primary
                          : unselectedColor ?? AppColors.textSecondary,
                      fontSize: 14,
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.w500,
                      fontFamily: 'Noto Sans',
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  // ========================================
  // LIST COMPONENTS
  // ========================================

  /// Product list item dengan animasi
  static Widget productListItem({
    required String name,
    required String price,
    required String imageUrl,
    required VoidCallback onTap,
    Widget? trailing,
    bool isAvailable = true,
    String? description,
  }) {
    return AppAnimations.fadeIn(
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // Product image
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),

                // Product info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
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
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            price,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                              fontFamily: 'Noto Sans',
                            ),
                          ),
                          const SizedBox(width: 8),
                          AppComponents.statusBadge(
                            text: isAvailable ? 'Tersedia' : 'Habis',
                            type: isAvailable
                                ? BadgeType.success
                                : BadgeType.error,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Trailing widget
                if (trailing != null) trailing,
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Order list item dengan animasi
  static Widget orderListItem({
    required String orderNumber,
    required String status,
    required String total,
    required DateTime date,
    required VoidCallback onTap,
    List<String>? items,
  }) {
    return AppAnimations.fadeIn(
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order #$orderNumber',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                        fontFamily: 'Noto Sans',
                      ),
                    ),
                    AppComponents.statusBadge(
                      text: status,
                      type: _getStatusBadgeType(status),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Total: $total',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                    fontFamily: 'Noto Sans',
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Tanggal: ${_formatDate(date)}',
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.textSecondary,
                    fontFamily: 'Noto Sans',
                  ),
                ),
                if (items != null && items.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text(
                    'Items: ${items.join(', ')}',
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
        ),
      ),
    );
  }

  // ========================================
  // UTILITY METHODS
  // ========================================

  /// Get status badge type based on status string
  /// Internal utility method for orderListItem component
  static BadgeType _getStatusBadgeType(String status) {
    switch (status.toLowerCase()) {
      case 'completed':
      case 'selesai':
        return BadgeType.success;
      case 'pending':
      case 'menunggu':
        return BadgeType.warning;
      case 'cancelled':
      case 'dibatalkan':
        return BadgeType.error;
      default:
        return BadgeType.info;
    }
  }

  /// Format date to readable string
  /// Internal utility method for orderListItem component
  static String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year} ${date.hour}:${date.minute.toString().padLeft(2, '0')}';
  }
}

// ========================================
// MODELS
// ========================================

/// Dropdown item model
class DropdownItem<T> {
  final T value;
  final String label;

  const DropdownItem({required this.value, required this.label});
}

/// Global navigator key for accessing context
/// Note: Consider using BuildContext directly when possible
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
