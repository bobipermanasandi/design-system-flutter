import 'package:flutter/material.dart';
import '../constant/app_colors.dart';
import 'app_typography.dart';
import 'app_spacing.dart';
import 'app_radius.dart';
import 'app_icons.dart';

/// Design Tokens System untuk Yokapos
/// Phase 3 - Centralized design tokens export untuk konsistensi
class AppDesignTokens {
  // ========================================
  // COLOR TOKENS
  // ========================================

  /// Primary color tokens
  static const Map<String, Color> primaryColors = {
    'primary': AppColors.primary,
    'primaryLight': AppColors.primaryLight,
    'primary2': AppColors.primary2,
    'blue': AppColors.blue,
  };

  /// Neutral color tokens
  static const Map<String, Color> neutralColors = {
    'white': AppColors.white,
    'white2': AppColors.white2,
    'black': AppColors.black,
    'grey': AppColors.grey,
  };

  /// Accent color tokens
  static const Map<String, Color> accentColors = {
    'yellow': AppColors.yellow,
    'green': AppColors.green,
    'red': AppColors.red,
  };

  /// Semantic color tokens
  static const Map<String, Color> semanticColors = {
    'success': AppColors.success,
    'error': AppColors.error,
    'warning': AppColors.warning,
    'info': AppColors.info,
  };

  /// Text color tokens
  static const Map<String, Color> textColors = {
    'textPrimary': AppColors.textPrimary,
    'textSecondary': AppColors.textSecondary,
    'textDisabled': AppColors.disabledText,
  };

  /// Background color tokens
  static const Map<String, Color> backgroundColors = {
    'background': AppColors.background,
    'backgroundSecondary': AppColors.backgroundSecondary,
    'disabledBackground': AppColors.disabledBackground,
  };

  /// All color tokens
  static const Map<String, Color> colors = {
    // Primary
    'primary': AppColors.primary,
    'primaryLight': AppColors.primaryLight,
    'primary2': AppColors.primary2,
    'blue': AppColors.blue,

    // Neutral
    'white': AppColors.white,
    'white2': AppColors.white2,
    'black': AppColors.black,
    'grey': AppColors.grey,

    // Accent
    'yellow': AppColors.yellow,
    'green': AppColors.green,
    'red': AppColors.red,

    // Semantic
    'success': AppColors.success,
    'error': AppColors.error,
    'warning': AppColors.warning,
    'info': AppColors.info,

    // Text
    'textPrimary': AppColors.textPrimary,
    'textSecondary': AppColors.textSecondary,
    'textDisabled': AppColors.disabledText,

    // Background
    'background': AppColors.background,
    'backgroundSecondary': AppColors.backgroundSecondary,
    'disabledBackground': AppColors.disabledBackground,
  };

  // ========================================
  // TYPOGRAPHY TOKENS
  // ========================================

  /// Font family tokens
  static const Map<String, String> fontFamilies = {
    'primary': AppTypography.primaryFont,
    'secondary': AppTypography.secondaryFont,
    'monospace': AppTypography.monospaceFont,
  };

  /// Font weight tokens
  static const Map<String, FontWeight> fontWeights = {
    'light': AppTypography.light,
    'regular': AppTypography.regular,
    'medium': AppTypography.medium,
    'semiBold': AppTypography.semiBold,
    'bold': AppTypography.bold,
    'extraBold': AppTypography.extraBold,
  };

  /// Heading text style tokens
  static Map<String, TextStyle> get headings => {
    'heading1': AppTypography.heading1,
    'heading2': AppTypography.heading2,
    'heading3': AppTypography.heading3,
    'heading4': AppTypography.heading4,
    'heading5': AppTypography.heading5,
    'heading6': AppTypography.heading6,
  };

  /// Body text style tokens
  static Map<String, TextStyle> get bodyText => {
    'body1': AppTypography.body1,
    'body2': AppTypography.body2,
    'body3': AppTypography.body3,
  };

  /// Button text style tokens
  static Map<String, TextStyle> get buttonText => {
    'buttonPrimary': AppTypography.buttonPrimary,
    'buttonSecondary': AppTypography.buttonSecondary,
    'buttonText': AppTypography.buttonText,
  };

  /// Input text style tokens
  static Map<String, TextStyle> get inputText => {
    'input': AppTypography.input,
    'inputLabel': AppTypography.inputLabel,
    'inputHint': AppTypography.inputHint,
  };

  /// Caption text style tokens
  static Map<String, TextStyle> get captions => {
    'caption': AppTypography.caption,
    'overline': AppTypography.overline,
  };

  /// Monospace text style tokens
  static Map<String, TextStyle> get monospace => {
    'monospace': AppTypography.monospace,
    'monospaceSmall': AppTypography.monospaceSmall,
  };

  /// Semantic text style tokens
  static Map<String, TextStyle> get semanticText => {
    'success': AppTypography.success,
    'error': AppTypography.error,
    'warning': AppTypography.warning,
    'info': AppTypography.info,
    'disabled': AppTypography.disabled,
    'link': AppTypography.link,
  };

  /// Price text style tokens
  static Map<String, TextStyle> get priceText => {
    'priceLarge': AppTypography.priceLarge,
    'priceMedium': AppTypography.priceMedium,
    'priceSmall': AppTypography.priceSmall,
    'priceStrikethrough': AppTypography.priceStrikethrough,
  };

  /// All typography tokens
  static Map<String, TextStyle> get typography => {
    // Headings
    'heading1': AppTypography.heading1,
    'heading2': AppTypography.heading2,
    'heading3': AppTypography.heading3,
    'heading4': AppTypography.heading4,
    'heading5': AppTypography.heading5,
    'heading6': AppTypography.heading6,

    // Body
    'body1': AppTypography.body1,
    'body2': AppTypography.body2,
    'body3': AppTypography.body3,

    // Buttons
    'buttonPrimary': AppTypography.buttonPrimary,
    'buttonSecondary': AppTypography.buttonSecondary,
    'buttonText': AppTypography.buttonText,

    // Inputs
    'input': AppTypography.input,
    'inputLabel': AppTypography.inputLabel,
    'inputHint': AppTypography.inputHint,

    // Captions
    'caption': AppTypography.caption,
    'overline': AppTypography.overline,

    // Monospace
    'monospace': AppTypography.monospace,
    'monospaceSmall': AppTypography.monospaceSmall,

    // Semantic
    'success': AppTypography.success,
    'error': AppTypography.error,
    'warning': AppTypography.warning,
    'info': AppTypography.info,
    'disabled': AppTypography.disabled,
    'link': AppTypography.link,

    // Price
    'priceLarge': AppTypography.priceLarge,
    'priceMedium': AppTypography.priceMedium,
    'priceSmall': AppTypography.priceSmall,
    'priceStrikethrough': AppTypography.priceStrikethrough,
  };

  // ========================================
  // SPACING TOKENS
  // ========================================

  /// Spacing scale tokens
  static const Map<String, double> spacing = {
    'xxs': AppSpacing.xxs,
    'xs': AppSpacing.xs,
    'sm': AppSpacing.sm,
    'md': AppSpacing.md,
    'lg': AppSpacing.lg,
    'xl': AppSpacing.xl,
    'xxl': AppSpacing.xxl,
    'huge': AppSpacing.huge,
    'massive': AppSpacing.massive,
  };

  /// Padding tokens
  static const Map<String, EdgeInsets> padding = {
    'allXxs': AppSpacing.allXxs,
    'allXs': AppSpacing.allXs,
    'allSm': AppSpacing.allSm,
    'allMd': AppSpacing.allMd,
    'allLg': AppSpacing.allLg,
    'allXl': AppSpacing.allXl,
    'allXxl': AppSpacing.allXxl,
    'allHuge': AppSpacing.allHuge,
    'allMassive': AppSpacing.allMassive,

    'horizontalXs': AppSpacing.horizontalXs,
    'horizontalSm': AppSpacing.horizontalSm,
    'horizontalMd': AppSpacing.horizontalMd,
    'horizontalLg': AppSpacing.horizontalLg,
    'horizontalXl': AppSpacing.horizontalXl,
    'horizontalXxl': AppSpacing.horizontalXxl,

    'verticalXs': AppSpacing.verticalXs,
    'verticalSm': AppSpacing.verticalSm,
    'verticalMd': AppSpacing.verticalMd,
    'verticalLg': AppSpacing.verticalLg,
    'verticalXl': AppSpacing.verticalXl,
    'verticalXxl': AppSpacing.verticalXxl,
  };

  /// Margin tokens
  static const Map<String, EdgeInsets> margin = {
    'marginXxs': AppSpacing.marginXxs,
    'marginXs': AppSpacing.marginXs,
    'marginSm': AppSpacing.marginSm,
    'marginMd': AppSpacing.marginMd,
    'marginLg': AppSpacing.marginLg,
    'marginXl': AppSpacing.marginXl,
    'marginXxl': AppSpacing.marginXxl,

    'marginHorizontalXs': AppSpacing.marginHorizontalXs,
    'marginHorizontalSm': AppSpacing.marginHorizontalSm,
    'marginHorizontalMd': AppSpacing.marginHorizontalMd,
    'marginHorizontalLg': AppSpacing.marginHorizontalLg,
    'marginHorizontalXl': AppSpacing.marginHorizontalXl,

    'marginVerticalXs': AppSpacing.marginVerticalXs,
    'marginVerticalSm': AppSpacing.marginVerticalSm,
    'marginVerticalMd': AppSpacing.marginVerticalMd,
    'marginVerticalLg': AppSpacing.marginVerticalLg,
    'marginVerticalXl': AppSpacing.marginVerticalXl,
  };

  /// Gap tokens
  static const Map<String, SizedBox> gaps = {
    'gapXxs': AppSpacing.gapXxs,
    'gapXs': AppSpacing.gapXs,
    'gapSm': AppSpacing.gapSm,
    'gapMd': AppSpacing.gapMd,
    'gapLg': AppSpacing.gapLg,
    'gapXl': AppSpacing.gapXl,
    'gapXxl': AppSpacing.gapXxl,
    'gapHuge': AppSpacing.gapHuge,

    'gapHorizontalXxs': AppSpacing.gapHorizontalXxs,
    'gapHorizontalXs': AppSpacing.gapHorizontalXs,
    'gapHorizontalSm': AppSpacing.gapHorizontalSm,
    'gapHorizontalMd': AppSpacing.gapHorizontalMd,
    'gapHorizontalLg': AppSpacing.gapHorizontalLg,
    'gapHorizontalXl': AppSpacing.gapHorizontalXl,
    'gapHorizontalXxl': AppSpacing.gapHorizontalXxl,
    'gapHorizontalHuge': AppSpacing.gapHorizontalHuge,

    'gapVerticalXxs': AppSpacing.gapVerticalXxs,
    'gapVerticalXs': AppSpacing.gapVerticalXs,
    'gapVerticalSm': AppSpacing.gapVerticalSm,
    'gapVerticalMd': AppSpacing.gapVerticalMd,
    'gapVerticalLg': AppSpacing.gapVerticalLg,
    'gapVerticalXl': AppSpacing.gapVerticalXl,
    'gapVerticalXxl': AppSpacing.gapVerticalXxl,
    'gapVerticalHuge': AppSpacing.gapVerticalHuge,
  };

  // ========================================
  // RADIUS TOKENS
  // ========================================

  /// Radius scale tokens
  static const Map<String, double> radius = {
    'none': AppRadius.none,
    'xs': AppRadius.xs,
    'sm': AppRadius.sm,
    'md': AppRadius.md,
    'lg': AppRadius.lg,
    'xl': AppRadius.xl,
    'xxl': AppRadius.xxl,
    'huge': AppRadius.huge,
    'massive': AppRadius.massive,
    'full': AppRadius.full,
  };

  /// Border radius tokens
  static const Map<String, BorderRadius> borderRadius = {
    'noneRadius': AppRadius.noneRadius,
    'xsRadius': AppRadius.xsRadius,
    'smRadius': AppRadius.smRadius,
    'mdRadius': AppRadius.mdRadius,
    'lgRadius': AppRadius.lgRadius,
    'xlRadius': AppRadius.xlRadius,
    'xxlRadius': AppRadius.xxlRadius,
    'hugeRadius': AppRadius.hugeRadius,
    'massiveRadius': AppRadius.massiveRadius,
    'fullRadius': AppRadius.fullRadius,
  };

  /// Component-specific radius tokens
  static const Map<String, BorderRadius> componentRadius = {
    'buttonRadius': AppRadius.buttonRadius,
    'buttonRadiusSmall': AppRadius.buttonRadiusSmall,
    'buttonRadiusLarge': AppRadius.buttonRadiusLarge,
    'buttonRadiusPill': AppRadius.buttonRadiusPill,

    'cardRadius': AppRadius.cardRadius,
    'cardRadiusSmall': AppRadius.cardRadiusSmall,
    'cardRadiusLarge': AppRadius.cardRadiusLarge,

    'inputRadius': AppRadius.inputRadius,
    'inputRadiusSmall': AppRadius.inputRadiusSmall,
    'inputRadiusLarge': AppRadius.inputRadiusLarge,

    'modalRadius': AppRadius.modalRadius,
    'modalRadiusSmall': AppRadius.modalRadiusSmall,
    'modalRadiusLarge': AppRadius.modalRadiusLarge,

    'chipRadius': AppRadius.chipRadius,
    'chipRadiusSmall': AppRadius.chipRadiusSmall,
    'chipRadiusLarge': AppRadius.chipRadiusLarge,

    'badgeRadius': AppRadius.badgeRadius,
    'badgeRadiusSmall': AppRadius.badgeRadiusSmall,
    'badgeRadiusLarge': AppRadius.badgeRadiusLarge,

    'avatarRadius': AppRadius.avatarRadius,
    'avatarRadiusSmall': AppRadius.avatarRadiusSmall,
    'avatarRadiusLarge': AppRadius.avatarRadiusLarge,

    'imageRadius': AppRadius.imageRadius,
    'imageRadiusSmall': AppRadius.imageRadiusSmall,
    'imageRadiusLarge': AppRadius.imageRadiusLarge,

    'navRadius': AppRadius.navRadius,
    'navRadiusSmall': AppRadius.navRadiusSmall,
    'navRadiusLarge': AppRadius.navRadiusLarge,
  };

  // ========================================
  // ICON TOKENS
  // ========================================

  /// Icon size tokens
  static const Map<String, double> iconSizes = {
    'xxs': AppIcons.xxs,
    'xs': AppIcons.xs,
    'sm': AppIcons.sm,
    'md': AppIcons.md,
    'lg': AppIcons.lg,
    'xl': AppIcons.xl,
    'xxl': AppIcons.xxl,
    'huge': AppIcons.huge,
    'massive': AppIcons.massive,
  };

  /// Navigation icon tokens
  static const Map<String, IconData> navigationIcons = {
    'home': AppIcons.home,
    'homeOutlined': AppIcons.homeOutlined,
    'homeFilled': AppIcons.homeFilled,
    'search': AppIcons.search,
    'searchOutlined': AppIcons.searchOutlined,
    'cart': AppIcons.cart,
    'cartOutlined': AppIcons.cartOutlined,
    'profile': AppIcons.profile,
    'profileOutlined': AppIcons.profileOutlined,
    'menu': AppIcons.menu,
    'menuOpen': AppIcons.menuOpen,
    'back': AppIcons.back,
    'backIos': AppIcons.backIos,
    'forward': AppIcons.forward,
    'forwardIos': AppIcons.forwardIos,
  };

  /// Commerce icon tokens
  static const Map<String, IconData> commerceIcons = {
    'product': AppIcons.product,
    'productOutlined': AppIcons.productOutlined,
    'order': AppIcons.order,
    'orderOutlined': AppIcons.orderOutlined,
    'orderList': AppIcons.orderList,
    'payment': AppIcons.payment,
    'paymentOutlined': AppIcons.paymentOutlined,
    'creditCard': AppIcons.creditCard,
    'creditCardOutlined': AppIcons.creditCardOutlined,
    'cash': AppIcons.cash,
    'price': AppIcons.price,
    'priceOutlined': AppIcons.priceOutlined,
    'discount': AppIcons.discount,
    'discountOutlined': AppIcons.discountOutlined,
  };

  /// Action icon tokens
  static const Map<String, IconData> actionIcons = {
    'add': AppIcons.add,
    'addCircle': AppIcons.addCircle,
    'addCircleOutlined': AppIcons.addCircleOutlined,
    'remove': AppIcons.remove,
    'delete': AppIcons.delete,
    'deleteOutlined': AppIcons.deleteOutlined,
    'clear': AppIcons.clear,
    'edit': AppIcons.edit,
    'editOutlined': AppIcons.editOutlined,
    'create': AppIcons.create,
    'createOutlined': AppIcons.createOutlined,
    'save': AppIcons.save,
    'saveOutlined': AppIcons.saveOutlined,
    'check': AppIcons.check,
    'checkCircle': AppIcons.checkCircle,
    'checkCircleOutlined': AppIcons.checkCircleOutlined,
    'done': AppIcons.done,
    'doneAll': AppIcons.doneAll,
  };

  /// Status icon tokens
  static const Map<String, IconData> statusIcons = {
    'success': AppIcons.success,
    'successOutlined': AppIcons.successOutlined,
    'error': AppIcons.error,
    'errorOutlined': AppIcons.errorOutlined,
    'warning': AppIcons.warning,
    'warningOutlined': AppIcons.warningOutlined,
    'info': AppIcons.info,
    'infoOutlined': AppIcons.infoOutlined,
    'help': AppIcons.help,
    'helpOutlined': AppIcons.helpOutlined,
  };

  // ========================================
  // COMPLETE DESIGN TOKENS EXPORT
  // ========================================

  /// Complete design tokens map
  static Map<String, dynamic> get allTokens => {
    'colors': colors,
    'typography': typography,
    'spacing': spacing,
    'padding': padding,
    'margin': margin,
    'gaps': gaps,
    'radius': radius,
    'borderRadius': borderRadius,
    'componentRadius': componentRadius,
    'iconSizes': iconSizes,
    'navigationIcons': navigationIcons,
    'commerceIcons': commerceIcons,
    'actionIcons': actionIcons,
    'statusIcons': statusIcons,
  };

  // ========================================
  // UTILITY METHODS
  // ========================================

  /// Get token value by key path (e.g., 'colors.primary')
  static dynamic getToken(String keyPath) {
    final keys = keyPath.split('.');
    dynamic current = allTokens;

    for (final key in keys) {
      if (current is Map && current.containsKey(key)) {
        current = current[key];
      } else {
        return null;
      }
    }

    return current;
  }

  /// Get color token
  static Color? getColor(String key) {
    return colors[key];
  }

  /// Get typography token
  static TextStyle? getTypography(String key) {
    return typography[key];
  }

  /// Get spacing token
  static double? getSpacing(String key) {
    return spacing[key];
  }

  /// Get radius token
  static double? getRadius(String key) {
    return radius[key];
  }

  /// Get border radius token
  static BorderRadius? getBorderRadius(String key) {
    return borderRadius[key];
  }

  /// Get icon token
  static IconData? getIcon(String category, String key) {
    switch (category) {
      case 'navigation':
        return navigationIcons[key];
      case 'commerce':
        return commerceIcons[key];
      case 'action':
        return actionIcons[key];
      case 'status':
        return statusIcons[key];
      default:
        return null;
    }
  }

  /// Export tokens as JSON-compatible map
  static Map<String, dynamic> toJson() {
    return {
      'colors': colors.map((key, value) => MapEntry(key, value.value)),
      'spacing': spacing,
      'radius': radius,
      'iconSizes': iconSizes,
      'fontFamilies': fontFamilies,
      'fontWeights': fontWeights.map(
        (key, value) => MapEntry(key, value.index),
      ),
    };
  }
}
