# Yokapos Color System

This document describes the comprehensive color system used in the Yokapos Flutter application.

## Overview

The color system is designed to provide consistency, maintainability, and a professional appearance across the entire application. All colors are centralized in `app_colors.dart` and organized by category.

## File Structure

```
lib/core/constant/
├── app_colors.dart              # Main color system
├── color_usage_example.dart     # Usage examples
├── colors.dart                  # Legacy color file (unchanged)
└── COLOR_SYSTEM_README.md       # This documentation
```

## Color Categories

### 1. Primary Colors
- **`primary`** (#1E3A8A) - Main brand color
- **`primaryLight`** (#1A72DD) - Used for gradients
- **`primary2`** (#021433) - Secondary brand color
- **`blue`** (#85A3F9) - Light blue accent

### 2. Neutral Colors
- **`white`** (#FFFFFF) - Pure white
- **`white2`** (#F8F7F7) - Off-white / Light grey
- **`grey`** (#6C7278) - Grey color
- **`black`** (#1A1C1E) - Black color

### 3. Accent Colors
- **`yellow`** (#FACC15) - Yellow accent
- **`green`** (#0D9C45) - Green color
- **`red`** (#C9080B) - Red color

### 4. Semantic Colors
- **`success`** - Same as green
- **`error`** - Same as red
- **`warning`** - Same as yellow
- **`info`** - Same as blue

## Gradients

### Available Gradients
- **`primaryGradient`** - Light to dark blue gradient
- **`primaryGradientReverse`** - Dark to light blue gradient
- **`darkGradient`** - Primary to primary2 gradient

## Usage Examples

### Basic Color Usage
```dart
import 'package:flutter/material.dart';
import 'package:yokapos/core/constant/app_colors.dart';

// Using primary color
Container(
  color: AppColors.primary,
  child: Text('Hello World'),
)

// Using gradient
Container(
  decoration: BoxDecoration(
    gradient: AppColors.primaryGradient,
  ),
  child: Text('Gradient Background'),
)
```

### Button Examples
```dart
// Primary button with gradient
Container(
  decoration: BoxDecoration(
    gradient: AppColors.primaryGradient,
    borderRadius: BorderRadius.circular(8),
  ),
  child: ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
    ),
    child: Text('Primary Button', style: TextStyle(color: AppColors.white)),
  ),
)

// Secondary button
OutlinedButton(
  onPressed: () {},
  style: OutlinedButton.styleFrom(
    foregroundColor: AppColors.primary,
    side: BorderSide(color: AppColors.primary),
  ),
  child: Text('Secondary Button'),
)
```

### Text Styling
```dart
Text(
  'Primary Text',
  style: TextStyle(
    color: AppColors.textPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
)

Text(
  'Secondary Text',
  style: TextStyle(
    color: AppColors.textSecondary,
    fontSize: 14,
  ),
)
```

### Card Example
```dart
Container(
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: AppColors.cardBackground,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: AppColors.border),
    boxShadow: [
      BoxShadow(
        color: AppColors.shadow,
        blurRadius: 8,
        offset: Offset(0, 2),
      ),
    ],
  ),
  child: Column(
    children: [
      Text('Card Title', style: TextStyle(color: AppColors.textPrimary)),
      Text('Card content', style: TextStyle(color: AppColors.textSecondary)),
    ],
  ),
)
```

### TextField Example
```dart
TextField(
  decoration: InputDecoration(
    hintText: 'Enter text...',
    hintStyle: TextStyle(color: AppColors.textSecondary),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.border),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.borderFocused),
    ),
    filled: true,
    fillColor: AppColors.backgroundSecondary,
  ),
)
```

## Utility Methods

### Opacity Methods
```dart
// Get color with opacity
Color colorWithOpacity = AppColors.primaryWithOpacity(0.5);

// Get any color with opacity
Color customOpacity = AppColors.withOpacity(AppColors.grey, 0.3);
```

### Extension Methods
```dart
// Get hex string of a color
String hexString = AppColors.primary.hexString; // Returns "#1E3A8A"

// Get color with alpha
Color withAlpha = AppColors.primary.withAlpha(0.5);
```

## Best Practices

### 1. Always Use AppColors
- ✅ Use `AppColors.primary` instead of `Color(0xFF1E3A8A)`
- ❌ Don't hardcode color values in your widgets

### 2. Use Semantic Colors
- ✅ Use `AppColors.success` for success states
- ✅ Use `AppColors.error` for error states
- ✅ Use `AppColors.warning` for warning states

### 3. Consistent Text Colors
- ✅ Use `AppColors.textPrimary` for main text
- ✅ Use `AppColors.textSecondary` for secondary text
- ✅ Use `AppColors.textOnPrimary` for text on primary backgrounds

### 4. Proper Background Usage
- ✅ Use `AppColors.background` for main backgrounds
- ✅ Use `AppColors.backgroundSecondary` for secondary backgrounds
- ✅ Use `AppColors.cardBackground` for card backgrounds

### 5. Border Consistency
- ✅ Use `AppColors.border` for default borders
- ✅ Use `AppColors.borderFocused` for focused states
- ✅ Use `AppColors.borderError` for error states

## Migration Guide

If you're migrating from the old color system:

1. Replace `Colors.primary` with `AppColors.primary`
2. Replace hardcoded colors with their AppColors equivalents
3. Use semantic colors where appropriate
4. Update gradients to use the new gradient constants

## Testing the Color System

To see all colors in action, you can navigate to the `ColorUsageExample` widget:

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => ColorUsageExample(),
  ),
);
```

## Maintenance

When adding new colors:

1. Add them to the appropriate category in `app_colors.dart`
2. Include a comment with the hex value
3. Update this documentation
4. Add usage examples if needed

## Color Palette Reference

| Color Name | Hex Code | Usage |
|------------|----------|-------|
| Primary | #1E3A8A | Main brand color, buttons, headers |
| Primary Light | #1A72DD | Gradients, highlights |
| Primary 2 | #021433 | Dark backgrounds, emphasis |
| Blue | #85A3F9 | Accents, info elements |
| White | #FFFFFF | Backgrounds, text on dark |
| White 2 | #F8F7F7 | Secondary backgrounds |
| Grey | #6C7278 | Secondary text, borders |
| Black | #1A1C1E | Primary text |
| Yellow | #FACC15 | Warnings, highlights |
| Green | #0D9C45 | Success states |
| Red | #C9080B | Error states, alerts | 