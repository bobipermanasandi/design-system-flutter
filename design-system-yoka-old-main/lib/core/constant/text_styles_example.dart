import 'package:flutter/material.dart';
import 'text_styles.dart';
import 'colors.dart';

/// Example usage of AppTextStyles
/// This file demonstrates how to use the text style system
class TextStylesExample extends StatelessWidget {
  const TextStylesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styles Example', style: AppTextStyles.titleLarge()),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display styles
            _buildSection('Display Styles', [
              Text('Display Large', style: AppTextStyles.displayLarge()),
              Text('Display Medium', style: AppTextStyles.displayMedium()),
              Text('Display Small', style: AppTextStyles.displaySmall()),
            ]),

            const SizedBox(height: 24),

            // Headline styles
            _buildSection('Headline Styles', [
              Text('Headline Large', style: AppTextStyles.headlineLarge()),
              Text('Headline Medium', style: AppTextStyles.headlineMedium()),
              Text('Headline Small', style: AppTextStyles.headlineSmall()),
            ]),

            const SizedBox(height: 24),

            // Title styles
            _buildSection('Title Styles', [
              Text('Title Large', style: AppTextStyles.titleLarge()),
              Text('Title Medium', style: AppTextStyles.titleMedium()),
              Text('Title Small', style: AppTextStyles.titleSmall()),
            ]),

            const SizedBox(height: 24),

            // Body styles
            _buildSection('Body Styles', [
              Text(
                'Body Large - This is a longer text example to show how body text looks with multiple lines and proper line height.',
                style: AppTextStyles.bodyLarge(),
              ),
              const SizedBox(height: 8),
              Text(
                'Body Medium - This is a medium body text example.',
                style: AppTextStyles.bodyMedium(),
              ),
              const SizedBox(height: 8),
              Text(
                'Body Small - This is a small body text example.',
                style: AppTextStyles.bodySmall(),
              ),
            ]),

            const SizedBox(height: 24),

            // Label styles
            _buildSection('Label Styles', [
              Text('Label Large', style: AppTextStyles.labelLarge()),
              Text('Label Medium', style: AppTextStyles.labelMedium()),
              Text('Label Small', style: AppTextStyles.labelSmall()),
            ]),

            const SizedBox(height: 24),

            // Custom styles
            _buildSection('Custom Styles', [
              Text('Button Text', style: AppTextStyles.button()),
              const SizedBox(height: 8),
              Text('Caption Text', style: AppTextStyles.caption()),
              const SizedBox(height: 8),
              Text('OVERLINE TEXT', style: AppTextStyles.overline()),
            ]),

            const SizedBox(height: 24),

            // Brand styles
            _buildSection('Brand Styles', [
              Text('Logo Text', style: AppTextStyles.logo()),
              const SizedBox(height: 8),
              Text('Logo Subtitle', style: AppTextStyles.logoSubtitle()),
            ]),

            const SizedBox(height: 24),

            // Form styles
            _buildSection('Form Styles', [
              Text('Input Label', style: AppTextStyles.inputLabel()),
              const SizedBox(height: 8),
              Text('Input Text', style: AppTextStyles.inputText()),
              const SizedBox(height: 8),
              Text('Input Hint', style: AppTextStyles.inputHint()),
            ]),

            const SizedBox(height: 24),

            // Status styles
            _buildSection('Status Styles', [
              Text('Error Message', style: AppTextStyles.error()),
              const SizedBox(height: 8),
              Text('Success Message', style: AppTextStyles.success()),
              const SizedBox(height: 8),
              Text('Link Text', style: AppTextStyles.link()),
            ]),

            const SizedBox(height: 24),

            // Custom colors example
            _buildSection('Custom Colors', [
              Text(
                'Primary Color Text',
                style: AppTextStyles.headlineMedium(color: AppColors.primary),
              ),
              const SizedBox(height: 8),
              Text(
                'Yellow Color Text',
                style: AppTextStyles.titleLarge(color: AppColors.yellow),
              ),
              const SizedBox(height: 8),
              Text(
                'Green Color Text',
                style: AppTextStyles.bodyLarge(color: AppColors.green),
              ),
            ]),

            const SizedBox(height: 24),

            // Custom weights example
            _buildSection('Custom Weights', [
              Text(
                'Light Weight',
                style: AppTextStyles.headlineMedium(
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Normal Weight',
                style: AppTextStyles.headlineMedium(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Medium Weight',
                style: AppTextStyles.headlineMedium(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Bold Weight',
                style: AppTextStyles.headlineMedium(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.titleLarge(
            color: AppColors.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        ...children,
      ],
    );
  }
}
