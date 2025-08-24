# Text Styles System

Sistem text style yang reusable menggunakan Google Poppins font untuk aplikasi YokaPOS.

## Overview

Sistem ini menyediakan berbagai text style yang konsisten dan mudah digunakan di seluruh aplikasi. Semua style menggunakan Google Poppins font dan mengikuti Material Design Typography Scale.

## Import

```dart
import 'package:yokapos/core/constant/text_styles.dart';
```

## Available Styles

### Display Styles (Heading Besar)
- `AppTextStyles.displayLarge()` - Font size: 57px
- `AppTextStyles.displayMedium()` - Font size: 45px  
- `AppTextStyles.displaySmall()` - Font size: 36px

### Headline Styles (Heading)
- `AppTextStyles.headlineLarge()` - Font size: 32px
- `AppTextStyles.headlineMedium()` - Font size: 28px
- `AppTextStyles.headlineSmall()` - Font size: 24px

### Title Styles (Judul)
- `AppTextStyles.titleLarge()` - Font size: 22px
- `AppTextStyles.titleMedium()` - Font size: 16px
- `AppTextStyles.titleSmall()` - Font size: 14px

### Body Styles (Teks Utama)
- `AppTextStyles.bodyLarge()` - Font size: 16px
- `AppTextStyles.bodyMedium()` - Font size: 14px
- `AppTextStyles.bodySmall()` - Font size: 12px

### Label Styles (Label)
- `AppTextStyles.labelLarge()` - Font size: 14px
- `AppTextStyles.labelMedium()` - Font size: 12px
- `AppTextStyles.labelSmall()` - Font size: 11px

### Custom Styles
- `AppTextStyles.button()` - Style untuk teks button
- `AppTextStyles.caption()` - Style untuk caption
- `AppTextStyles.overline()` - Style untuk overline text

### Brand Styles
- `AppTextStyles.logo()` - Style untuk logo text
- `AppTextStyles.logoSubtitle()` - Style untuk subtitle logo

### Form Styles
- `AppTextStyles.inputLabel()` - Style untuk label input
- `AppTextStyles.inputText()` - Style untuk teks input
- `AppTextStyles.inputHint()` - Style untuk hint input

### Status Styles
- `AppTextStyles.error()` - Style untuk pesan error
- `AppTextStyles.success()` - Style untuk pesan sukses
- `AppTextStyles.link()` - Style untuk link text

## Usage Examples

### Basic Usage
```dart
Text(
  'Hello World',
  style: AppTextStyles.headlineLarge(),
)
```

### Custom Color
```dart
Text(
  'Custom Color Text',
  style: AppTextStyles.titleLarge(color: AppColors.primary),
)
```

### Custom Font Weight
```dart
Text(
  'Bold Text',
  style: AppTextStyles.bodyLarge(fontWeight: FontWeight.w700),
)
```

### Combined Customization
```dart
Text(
  'Custom Styled Text',
  style: AppTextStyles.headlineMedium(
    color: AppColors.yellow,
    fontWeight: FontWeight.w600,
  ),
)
```

## Best Practices

1. **Konsistensi**: Gunakan style yang sama untuk elemen yang sama di seluruh aplikasi
2. **Hierarki**: Gunakan display/headline untuk judul utama, title untuk sub-judul, dan body untuk konten
3. **Warna**: Gunakan `AppColors` untuk konsistensi warna
4. **Responsivitas**: Style sudah dioptimalkan untuk berbagai ukuran layar

## Migration Guide

### Dari Theme.of(context).textTheme
```dart
// Old way
Text(
  'Hello',
  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  ),
)

// New way
Text(
  'Hello',
  style: AppTextStyles.headlineLarge(
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  ),
)
```

### Dari TextStyle.copyWith
```dart
// Old way
Text(
  'Hello',
  style: TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  ),
)

// New way
Text(
  'Hello',
  style: AppTextStyles.headlineLarge(
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  ),
)
```

## Testing

Untuk melihat semua style yang tersedia, gunakan `TextStylesExample` widget:

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const TextStylesExample()),
);
```

## Maintenance

- Semua style menggunakan Google Poppins font
- Font weights mengikuti Material Design guidelines
- Line heights dioptimalkan untuk readability
- Colors menggunakan `AppColors` untuk konsistensi 