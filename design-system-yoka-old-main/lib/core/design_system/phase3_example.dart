import 'package:flutter/material.dart';
import '../constant/app_colors.dart';
import 'app_theme.dart';
import 'app_components.dart';
import 'app_animations.dart';
import 'app_responsive.dart';
import 'app_advanced_components.dart';
import 'app_typography.dart';
import 'app_spacing.dart';
import 'app_radius.dart';
import 'app_icons.dart';
import 'app_design_tokens.dart';

/// Phase 3 Design System Example
/// Demonstrasi lengkap semua fitur Phase 3: Typography, Spacing, Radius, Icons, Design Tokens
class Phase3Example extends StatefulWidget {
  const Phase3Example({super.key});

  @override
  State<Phase3Example> createState() => _Phase3ExampleState();
}

class _Phase3ExampleState extends State<Phase3Example>
    with TickerProviderStateMixin {
  bool _isDarkMode = false;
  int _currentIndex = 0;
  final TextEditingController _searchController = TextEditingController();
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yokapos Phase 3',
      theme: _isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
      home: Scaffold(
        backgroundColor: _isDarkMode
            ? AppColors.primary2
            : AppColors.background,
        appBar: AppAdvancedComponents.searchAppBar(
          title: 'Yokapos Phase 3',
          searchController: _searchController,
          onSearch: (value) => print('Search: $value'),
          actions: [
            IconButton(
              onPressed: () => setState(() => _isDarkMode = !_isDarkMode),
              icon: AppIcons.themeIcon(
                context: context,
                lightIcon: AppIcons.darkMode,
                darkIcon: AppIcons.lightMode,
              ),
            ),
          ],
        ),
        body: _buildBody(),
        bottomNavigationBar: AppResponsive.responsiveNavigationBar(
          items: _navigationItems,
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: AppSpacing.responsivePadding(
        context: context,
        mobilePadding: AppSpacing.allMd,
        tabletPadding: AppSpacing.allLg,
        desktopPadding: AppSpacing.allXl,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Typography Section
          _buildTypographySection(),
          AppSpacing.gapVerticalLg,

          // Spacing Section
          _buildSpacingSection(),
          AppSpacing.gapVerticalLg,

          // Radius Section
          _buildRadiusSection(),
          AppSpacing.gapVerticalLg,

          // Icons Section
          _buildIconsSection(),
          AppSpacing.gapVerticalLg,

          // Design Tokens Section
          _buildDesignTokensSection(),
          AppSpacing.gapVerticalLg,

          // Responsive Components
          _buildResponsiveComponents(),
          AppSpacing.gapVerticalLg,

          // Advanced Components
          _buildAdvancedComponents(),
        ],
      ),
    );
  }

  Widget _buildTypographySection() {
    return AppComponents.card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Typography System', style: AppTypography.heading3),
          AppSpacing.gapVerticalMd,

          // Headings
          Text('Headings', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Text(
            'Heading 1 - Display text untuk judul utama',
            style: AppTypography.heading1,
          ),
          Text(
            'Heading 2 - Judul section utama',
            style: AppTypography.heading2,
          ),
          Text('Heading 3 - Judul subsection', style: AppTypography.heading3),
          Text(
            'Heading 4 - Judul card atau modal',
            style: AppTypography.heading4,
          ),
          Text(
            'Heading 5 - Judul list atau table',
            style: AppTypography.heading5,
          ),
          Text(
            'Heading 6 - Judul kecil atau label',
            style: AppTypography.heading6,
          ),

          AppSpacing.gapVerticalMd,

          // Body Text
          Text('Body Text', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Text(
            'Body 1 - Text utama untuk konten dengan line height yang nyaman dibaca',
            style: AppTypography.body1,
          ),
          Text(
            'Body 2 - Text secondary untuk deskripsi dan informasi tambahan',
            style: AppTypography.body2,
          ),
          Text(
            'Body 3 - Text kecil untuk caption dan detail',
            style: AppTypography.body3,
          ),

          AppSpacing.gapVerticalMd,

          // Button Text
          Text('Button Text', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Row(
            children: [
              Expanded(
                child: AppComponents.primaryButton(
                  text: 'Primary Button',
                  onPressed: () {},
                ),
              ),
              AppSpacing.gapHorizontalMd,
              Expanded(
                child: AppComponents.secondaryButton(
                  text: 'Secondary Button',
                  onPressed: () {},
                ),
              ),
            ],
          ),

          AppSpacing.gapVerticalMd,

          // Semantic Text
          Text('Semantic Text', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Text(
            'Success message dengan warna hijau',
            style: AppTypography.success,
          ),
          Text('Error message dengan warna merah', style: AppTypography.error),
          Text(
            'Warning message dengan warna kuning',
            style: AppTypography.warning,
          ),
          Text('Info message dengan warna biru', style: AppTypography.info),
          Text('Link text dengan underline', style: AppTypography.link),

          AppSpacing.gapVerticalMd,

          // Price Text
          Text('Price Text', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Text('Rp 150.000', style: AppTypography.priceLarge),
          Text('Rp 75.000', style: AppTypography.priceMedium),
          Text('Rp 25.000', style: AppTypography.priceSmall),
          Text('Rp 100.000', style: AppTypography.priceStrikethrough),

          AppSpacing.gapVerticalMd,

          // Responsive Typography
          Text('Responsive Typography', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Text(
            'Text ini akan menyesuaikan ukuran berdasarkan screen size',
            style: AppTypography.responsiveHeading(
              context: context,
              mobileStyle: AppTypography.heading4,
              tabletStyle: AppTypography.heading3,
              desktopStyle: AppTypography.heading2,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpacingSection() {
    return AppComponents.card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Spacing System', style: AppTypography.heading3),
          AppSpacing.gapVerticalMd,

          // Spacing Scale
          Text('Spacing Scale', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          _buildSpacingDemo(),

          AppSpacing.gapVerticalMd,

          // Padding Examples
          Text('Padding Examples', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: AppSpacing.allXs,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: AppRadius.xsRadius,
                  ),
                  child: Text('XS Padding', style: AppTypography.caption),
                ),
              ),
              AppSpacing.gapHorizontalSm,
              Expanded(
                child: Container(
                  padding: AppSpacing.allSm,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: AppRadius.smRadius,
                  ),
                  child: Text('SM Padding', style: AppTypography.caption),
                ),
              ),
              AppSpacing.gapHorizontalSm,
              Expanded(
                child: Container(
                  padding: AppSpacing.allMd,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: AppRadius.mdRadius,
                  ),
                  child: Text('MD Padding', style: AppTypography.caption),
                ),
              ),
            ],
          ),

          AppSpacing.gapVerticalMd,

          // Responsive Spacing
          Text('Responsive Spacing', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Container(
            padding: AppSpacing.responsivePadding(
              context: context,
              mobilePadding: AppSpacing.allSm,
              tabletPadding: AppSpacing.allMd,
              desktopPadding: AppSpacing.allLg,
            ),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: AppRadius.responsiveRadius(
                context: context,
                mobileRadius: AppRadius.sm,
                tabletRadius: AppRadius.md,
                desktopRadius: AppRadius.lg,
              ),
            ),
            child: Text(
              'Container dengan padding yang menyesuaikan screen size',
              style: AppTypography.body2,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpacingDemo() {
    return Column(
      children: [
        _buildSpacingItem('XXS', AppSpacing.xxs),
        _buildSpacingItem('XS', AppSpacing.xs),
        _buildSpacingItem('SM', AppSpacing.sm),
        _buildSpacingItem('MD', AppSpacing.md),
        _buildSpacingItem('LG', AppSpacing.lg),
        _buildSpacingItem('XL', AppSpacing.xl),
        _buildSpacingItem('XXL', AppSpacing.xxl),
        _buildSpacingItem('Huge', AppSpacing.huge),
      ],
    );
  }

  Widget _buildSpacingItem(String label, double size) {
    return Padding(
      padding: AppSpacing.verticalXs,
      child: Row(
        children: [
          SizedBox(width: 60, child: Text(label, style: AppTypography.caption)),
          Container(
            width: size,
            height: 20,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: AppRadius.xsRadius,
            ),
          ),
          AppSpacing.gapHorizontalSm,
          Text('${size.toInt()}px', style: AppTypography.caption),
        ],
      ),
    );
  }

  Widget _buildRadiusSection() {
    return AppComponents.card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Border Radius System', style: AppTypography.heading3),
          AppSpacing.gapVerticalMd,

          // Radius Scale
          Text('Radius Scale', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          _buildRadiusDemo(),

          AppSpacing.gapVerticalMd,

          // Component Radius
          Text('Component Radius', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: AppSpacing.allMd,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: AppRadius.buttonRadius,
                  ),
                  child: Text('Button Radius', style: AppTypography.caption),
                ),
              ),
              AppSpacing.gapHorizontalSm,
              Expanded(
                child: Container(
                  padding: AppSpacing.allMd,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: AppRadius.cardRadius,
                  ),
                  child: Text('Card Radius', style: AppTypography.caption),
                ),
              ),
              AppSpacing.gapHorizontalSm,
              Expanded(
                child: Container(
                  padding: AppSpacing.allMd,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: AppRadius.inputRadius,
                  ),
                  child: Text('Input Radius', style: AppTypography.caption),
                ),
              ),
            ],
          ),

          AppSpacing.gapVerticalMd,

          // Directional Radius
          Text('Directional Radius', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: AppSpacing.allMd,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: AppRadius.topRadius(AppRadius.lg),
                  ),
                  child: Text('Top Radius', style: AppTypography.caption),
                ),
              ),
              AppSpacing.gapHorizontalSm,
              Expanded(
                child: Container(
                  padding: AppSpacing.allMd,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: AppRadius.bottomRadius(AppRadius.lg),
                  ),
                  child: Text('Bottom Radius', style: AppTypography.caption),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRadiusDemo() {
    return Column(
      children: [
        _buildRadiusItem('None', AppRadius.none),
        _buildRadiusItem('XS', AppRadius.xs),
        _buildRadiusItem('SM', AppRadius.sm),
        _buildRadiusItem('MD', AppRadius.md),
        _buildRadiusItem('LG', AppRadius.lg),
        _buildRadiusItem('XL', AppRadius.xl),
        _buildRadiusItem('XXL', AppRadius.xxl),
        _buildRadiusItem('Huge', AppRadius.huge),
        _buildRadiusItem('Full', AppRadius.full),
      ],
    );
  }

  Widget _buildRadiusItem(String label, double radius) {
    return Padding(
      padding: AppSpacing.verticalXs,
      child: Row(
        children: [
          SizedBox(width: 60, child: Text(label, style: AppTypography.caption)),
          Container(
            width: 60,
            height: 30,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
          AppSpacing.gapHorizontalSm,
          Text('${radius.toInt()}px', style: AppTypography.caption),
        ],
      ),
    );
  }

  Widget _buildIconsSection() {
    return AppComponents.card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Icon System', style: AppTypography.heading3),
          AppSpacing.gapVerticalMd,

          // Icon Sizes
          Text('Icon Sizes', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Row(
            children: [
              AppIcons.iconXs(iconData: AppIcons.home),
              AppSpacing.gapHorizontalSm,
              AppIcons.iconSm(iconData: AppIcons.home),
              AppSpacing.gapHorizontalSm,
              AppIcons.iconMd(iconData: AppIcons.home),
              AppSpacing.gapHorizontalSm,
              AppIcons.iconLg(iconData: AppIcons.home),
              AppSpacing.gapHorizontalSm,
              AppIcons.iconXl(iconData: AppIcons.home),
            ],
          ),

          AppSpacing.gapVerticalMd,

          // Navigation Icons
          Text('Navigation Icons', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: [
              AppIcons.iconMd(iconData: AppIcons.home),
              AppIcons.iconMd(iconData: AppIcons.search),
              AppIcons.iconMd(iconData: AppIcons.cart),
              AppIcons.iconMd(iconData: AppIcons.profile),
              AppIcons.iconMd(iconData: AppIcons.menu),
              AppIcons.iconMd(iconData: AppIcons.back),
              AppIcons.iconMd(iconData: AppIcons.forward),
            ],
          ),

          AppSpacing.gapVerticalMd,

          // Commerce Icons
          Text('Commerce Icons', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: [
              AppIcons.iconMd(iconData: AppIcons.product),
              AppIcons.iconMd(iconData: AppIcons.order),
              AppIcons.iconMd(iconData: AppIcons.payment),
              AppIcons.iconMd(iconData: AppIcons.creditCard),
              AppIcons.iconMd(iconData: AppIcons.price),
              AppIcons.iconMd(iconData: AppIcons.discount),
            ],
          ),

          AppSpacing.gapVerticalMd,

          // Action Icons
          Text('Action Icons', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: [
              AppIcons.iconMd(iconData: AppIcons.add),
              AppIcons.iconMd(iconData: AppIcons.edit),
              AppIcons.iconMd(iconData: AppIcons.delete),
              AppIcons.iconMd(iconData: AppIcons.save),
              AppIcons.iconMd(iconData: AppIcons.check),
              AppIcons.iconMd(iconData: AppIcons.clear),
            ],
          ),

          AppSpacing.gapVerticalMd,

          // Status Icons
          Text('Status Icons', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: [
              AppIcons.iconMd(
                iconData: AppIcons.success,
                color: AppColors.success,
              ),
              AppIcons.iconMd(iconData: AppIcons.error, color: AppColors.error),
              AppIcons.iconMd(
                iconData: AppIcons.warning,
                color: AppColors.warning,
              ),
              AppIcons.iconMd(iconData: AppIcons.info, color: AppColors.info),
              AppIcons.iconMd(iconData: AppIcons.help),
            ],
          ),

          AppSpacing.gapVerticalMd,

          // Animated Icons
          Text('Animated Icons', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Row(
            children: [
              AppIcons.animatedIcon(
                iconData: AppIcons.refresh,
                animation: _animationController,
                color: AppColors.primary,
              ),
              AppSpacing.gapHorizontalMd,
              AppIcons.scaleIcon(
                iconData: Icons.favorite,
                animation: _animationController,
                color: AppColors.error,
              ),
            ],
          ),

          AppSpacing.gapVerticalMd,

          // Icon with Badge
          Text('Icon with Badge', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          AppIcons.iconWithBadge(
            iconData: AppIcons.notification,
            badgeText: '3',
            badgeColor: AppColors.error,
          ),
        ],
      ),
    );
  }

  Widget _buildDesignTokensSection() {
    return AppComponents.card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Design Tokens', style: AppTypography.heading3),
          AppSpacing.gapVerticalMd,

          // Color Tokens
          Text('Color Tokens', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: AppDesignTokens.colors.entries.map((entry) {
              return Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: entry.value,
                  borderRadius: AppRadius.smRadius,
                  border: Border.all(color: AppColors.grey.withOpacity(0.3)),
                ),
                child: Center(
                  child: Text(
                    entry.key.substring(0, 1).toUpperCase(),
                    style: AppTypography.caption.withColor(AppColors.white),
                  ),
                ),
              );
            }).toList(),
          ),

          AppSpacing.gapVerticalMd,

          // Typography Tokens
          Text('Typography Tokens', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Text(
            'Heading 1 dari tokens',
            style: AppDesignTokens.getTypography('heading1'),
          ),
          Text(
            'Body 1 dari tokens',
            style: AppDesignTokens.getTypography('body1'),
          ),
          Text(
            'Success text dari tokens',
            style: AppDesignTokens.getTypography('success'),
          ),

          AppSpacing.gapVerticalMd,

          // Spacing Tokens
          Text('Spacing Tokens', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Row(
            children: [
              Container(
                width: AppDesignTokens.getSpacing('md') ?? 16,
                height: 20,
                color: AppColors.primary,
              ),
              AppSpacing.gapHorizontalSm,
              Text('MD Spacing: ${AppDesignTokens.getSpacing('md')}px'),
            ],
          ),

          AppSpacing.gapVerticalMd,

          // Icon Tokens
          Text('Icon Tokens', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          Row(
            children: [
              Icon(
                AppDesignTokens.getIcon('navigation', 'home') ?? AppIcons.home,
                size: AppDesignTokens.getSpacing('md'),
              ),
              AppSpacing.gapHorizontalSm,
              Icon(
                AppDesignTokens.getIcon('commerce', 'product') ??
                    AppIcons.product,
                size: AppDesignTokens.getSpacing('md'),
              ),
              AppSpacing.gapHorizontalSm,
              Icon(
                AppDesignTokens.getIcon('action', 'add') ?? AppIcons.add,
                size: AppDesignTokens.getSpacing('md'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildResponsiveComponents() {
    return AppComponents.card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Responsive Components', style: AppTypography.heading3),
          AppSpacing.gapVerticalMd,

          // Responsive Grid
          Text('Responsive Grid', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          AppResponsive.responsiveGrid(
            children: List.generate(
              6,
              (index) => Container(
                padding: AppSpacing.allMd,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: AppRadius.cardRadius,
                ),
                child: Text('Item ${index + 1}', style: AppTypography.body2),
              ),
            ),
            mobileColumns: 1,
            tabletColumns: 2,
            desktopColumns: 3,
          ),

          AppSpacing.gapVerticalMd,

          // Responsive Text
          Text('Responsive Text', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          AppResponsive.responsiveText(
            text: 'Text ini akan menyesuaikan ukuran berdasarkan screen size',
            mobileStyle: AppTypography.body3,
            tabletStyle: AppTypography.body2,
            desktopStyle: AppTypography.body1,
          ),
        ],
      ),
    );
  }

  Widget _buildAdvancedComponents() {
    return AppComponents.card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Advanced Components', style: AppTypography.heading3),
          AppSpacing.gapVerticalMd,

          // Form Field
          Text('Form Field dengan Validation', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          AppAdvancedComponents.formField(
            label: 'Nama Produk',
            validator: (value) =>
                value?.isEmpty == true ? 'Nama produk wajib diisi' : null,
          ),

          AppSpacing.gapVerticalMd,

          // Date Picker
          Text('Date Picker Field', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          AppAdvancedComponents.datePickerField(
            label: 'Tanggal Produksi',
            initialDate: DateTime.now(),
            onDateSelected: (date) => print('Selected date: $date'),
          ),

          AppSpacing.gapVerticalMd,

          // Product List Item
          Text('Product List Item', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          AppAdvancedComponents.productListItem(
            name: 'Ayam Geprek',
            price: 'Rp 15.000',
            imageUrl: 'assets/images/ayamgeprek.png',
            onTap: () => print('Product tapped'),
            isAvailable: true,
          ),

          AppSpacing.gapVerticalMd,

          // Animated Progress Bar
          Text('Animated Progress Bar', style: AppTypography.heading5),
          AppSpacing.gapVerticalSm,
          AppAnimations.animatedProgressBar(progress: 0.75, height: 8),
        ],
      ),
    );
  }

  final List<NavigationItem> _navigationItems = [
    const NavigationItem(icon: Icon(Icons.home), label: 'Beranda'),
    const NavigationItem(icon: Icon(Icons.shopping_bag), label: 'Produk'),
    const NavigationItem(icon: Icon(Icons.receipt), label: 'Pesanan'),
    const NavigationItem(icon: Icon(Icons.person), label: 'Profil'),
  ];
}
