import 'package:flutter/material.dart';

import 'design_system.dart';

class DesignSystemDemo extends StatefulWidget {
  const DesignSystemDemo({
    super.key,
    required this.title,
    required this.themeController,
  });

  final String title;
  final ThemeController themeController;

  @override
  State<DesignSystemDemo> createState() => _DesignSystemDemoState();
}

class _DesignSystemDemoState extends State<DesignSystemDemo> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          ThemeToggle(
            controller: widget.themeController,
            size: AppIconButtonSize.medium,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Welcome Section
              Text(
                'Welcome to YokaPOS',
                style: AppTypography.displayMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                'A Flutter project with a comprehensive design system',
                style: AppTypography.bodyLarge.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),

              // Counter Section
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      const AppIcon(
                        icon: Icons.touch_app,
                        size: AppIconSize.extraLarge,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Button pressed count:',
                        style: AppTypography.titleMedium,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '$_counter',
                        style: AppTypography.displayLarge.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 24),
                      AppButton.filled(
                        onPressed: _incrementCounter,
                        icon: const Icon(Icons.add, size: 20),
                        child: const Text('Increment Counter'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children: const [
                  AppBadge.success(
                    label: 'Design System',
                    icon: Icon(Icons.check_circle, size: 12),
                  ),
                  AppBadge(
                    label: 'Flutter 3.0+',
                    icon: Icon(Icons.flutter_dash, size: 12),
                  ),
                  AppBadge.warning(
                    label: 'Beta',
                    icon: Icon(Icons.science, size: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
