import 'package:flutter/material.dart';
import '../constant/app_colors.dart';
import 'app_theme.dart';
import 'app_components.dart';
import 'app_animations.dart';
import 'app_responsive.dart';
import 'app_advanced_components.dart';

/// Phase 2 Design System Example
/// Menunjukkan semua fitur advanced components, animations, dan responsive design
class Phase2Example extends StatefulWidget {
  const Phase2Example({super.key});

  @override
  State<Phase2Example> createState() => _Phase2ExampleState();
}

class _Phase2ExampleState extends State<Phase2Example>
    with TickerProviderStateMixin {
  bool _isDarkMode = false;
  int _currentTabIndex = 0;
  int _currentBottomNavIndex = 0;
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _formController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  String? _selectedCategory;

  late AppAnimationController _animationController;

  final List<String> _tabs = ['Beranda', 'Produk', 'Pesanan', 'Profil'];
  final List<NavigationItem> _navigationItems = [
    const NavigationItem(icon: Icon(Icons.home), label: 'Beranda'),
    const NavigationItem(icon: Icon(Icons.shopping_bag), label: 'Produk'),
    const NavigationItem(icon: Icon(Icons.receipt), label: 'Pesanan'),
    const NavigationItem(icon: Icon(Icons.person), label: 'Profil'),
  ];

  final List<DropdownItem<String>> _categories = [
    const DropdownItem(value: 'makanan', label: 'Makanan'),
    const DropdownItem(value: 'minuman', label: 'Minuman'),
    const DropdownItem(value: 'snack', label: 'Snack'),
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AppAnimationController(
      vsync: this,
      duration: AppAnimations.slow,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yokapos Phase 2',
      theme: _isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
      home: Scaffold(
        backgroundColor: _isDarkMode
            ? AppColors.primary2
            : AppColors.background,
        appBar: AppAdvancedComponents.searchAppBar(
          title: 'Yokapos Phase 2',
          searchController: _searchController,
          onSearch: (value) => print('Searching: $value'),
          onClear: () => _searchController.clear(),
          actions: [
            IconButton(
              icon: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: () {
                setState(() {
                  _isDarkMode = !_isDarkMode;
                });
              },
            ),
          ],
        ),
        body: _buildBody(),
        bottomNavigationBar: AppResponsive.responsiveNavigationBar(
          items: _navigationItems,
          currentIndex: _currentBottomNavIndex,
          onTap: (index) {
            setState(() {
              _currentBottomNavIndex = index;
            });
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _showAdvancedBottomSheet(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header dengan animasi
          _buildAnimatedHeader(),
          AppComponents.spacer24,

          // Tab bar dengan animasi
          AppAdvancedComponents.animatedTabBar(
            tabs: _tabs,
            currentIndex: _currentTabIndex,
            onTap: (index) {
              setState(() {
                _currentTabIndex = index;
              });
            },
          ),
          AppComponents.spacer24,

          // Responsive grid dengan animasi
          _buildResponsiveGrid(),
          AppComponents.spacer24,

          // Form components
          _buildFormSection(),
          AppComponents.spacer24,

          // List components
          _buildListSection(),
          AppComponents.spacer24,

          // Animation examples
          _buildAnimationExamples(),
          AppComponents.spacer24,

          // Responsive examples
          _buildResponsiveExamples(),
        ],
      ),
    );
  }

  Widget _buildAnimatedHeader() {
    return AppAnimations.fadeIn(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: AppColors.primaryGradient,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppAnimations.slideInLeft(
              child: Text(
                'Phase 2 Design System',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            AppComponents.spacer8,
            AppAnimations.slideInRight(
              child: Text(
                'Advanced components, animations, dan responsive design',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.white.withOpacity(0.9),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResponsiveGrid() {
    final products = [
      {
        'name': 'Ayam Geprek',
        'price': 'Rp 15.000',
        'image': 'assets/images/products/ayamgeprek.png',
        'status': 'Tersedia',
      },
      {
        'name': 'Ayam Black Pepper',
        'price': 'Rp 18.000',
        'image': 'assets/images/products/ayamblackpepper.png',
        'status': 'Tersedia',
      },
      {
        'name': 'Ayam Mozarella',
        'price': 'Rp 20.000',
        'image': 'assets/images/products/ayammozarella.png',
        'status': 'Habis',
      },
      {
        'name': 'Ayam Original',
        'price': 'Rp 12.000',
        'image': 'assets/images/products/ayamoriginal.png',
        'status': 'Tersedia',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppResponsive.responsiveText(
          text: 'Produk Unggulan',
          mobileStyle: Theme.of(context).textTheme.titleLarge,
          tabletStyle: Theme.of(context).textTheme.headlineSmall,
          desktopStyle: Theme.of(context).textTheme.headlineMedium,
        ),
        AppComponents.spacer16,
        AppResponsive.responsiveGrid(
          children: products.asMap().entries.map((entry) {
            final index = entry.key;
            final product = entry.value;
            final isAvailable = product['status'] == 'Tersedia';

            return AppAnimations.staggered(
              index: index,
              child: AppComponents.productCard(
                title: product['name']!,
                price: product['price']!,
                imageUrl: product['image'],
                onTap: () => _showProductDetail(product),
                trailing: AppComponents.statusBadge(
                  text: product['status']!,
                  type: isAvailable ? BadgeType.success : BadgeType.error,
                ),
              ),
            );
          }).toList(),
          mobileColumns: 1,
          tabletColumns: 2,
          desktopColumns: 3,
          largeDesktopColumns: 4,
        ),
      ],
    );
  }

  Widget _buildFormSection() {
    return AppResponsive.responsiveCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppResponsive.responsiveText(
            text: 'Form Advanced',
            mobileStyle: Theme.of(context).textTheme.titleLarge,
            tabletStyle: Theme.of(context).textTheme.headlineSmall,
          ),
          AppComponents.spacer16,

          // Form field dengan validation
          AppAdvancedComponents.formField(
            label: 'Nama Lengkap',
            hint: 'Masukkan nama lengkap',
            controller: _formController,
            prefixIcon: const Icon(Icons.person),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Nama tidak boleh kosong';
              }
              return null;
            },
          ),
          AppComponents.spacer16,

          // Date picker field
          AppAdvancedComponents.datePickerField(
            label: 'Tanggal Pesanan',
            initialDate: _selectedDate,
            onDateSelected: (date) {
              setState(() {
                _selectedDate = date;
              });
            },
            hint: 'Pilih tanggal pesanan',
          ),
          AppComponents.spacer16,

          // Dropdown field
          AppAdvancedComponents.dropdownField<String>(
            label: 'Kategori',
            items: _categories,
            value: _selectedCategory,
            onChanged: (value) {
              setState(() {
                _selectedCategory = value;
              });
            },
            hint: 'Pilih kategori',
          ),
          AppComponents.spacer24,

          // Responsive buttons
          AppResponsive.responsiveList(
            children: [
              AppResponsive.responsiveButton(
                text: 'Simpan',
                onPressed: () => _showConfirmationDialog(),
                type: ButtonType.primary,
              ),
              AppResponsive.responsiveButton(
                text: 'Batal',
                onPressed: () => _resetForm(),
                type: ButtonType.secondary,
              ),
            ],
            mobileVertical: true,
            tabletVertical: false,
            desktopHorizontal: true,
          ),
        ],
      ),
    );
  }

  Widget _buildListSection() {
    final orders = [
      {
        'orderNumber': '001',
        'status': 'Selesai',
        'total': 'Rp 45.000',
        'date': DateTime.now().subtract(const Duration(days: 1)),
        'items': ['Ayam Geprek', 'Es Teh'],
      },
      {
        'orderNumber': '002',
        'status': 'Menunggu',
        'total': 'Rp 32.000',
        'date': DateTime.now(),
        'items': ['Ayam Black Pepper', 'Es Jeruk'],
      },
      {
        'orderNumber': '003',
        'status': 'Dibatalkan',
        'total': 'Rp 28.000',
        'date': DateTime.now().subtract(const Duration(days: 2)),
        'items': ['Ayam Mozarella'],
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppResponsive.responsiveText(
          text: 'Riwayat Pesanan',
          mobileStyle: Theme.of(context).textTheme.titleLarge,
          tabletStyle: Theme.of(context).textTheme.headlineSmall,
        ),
        AppComponents.spacer16,
        ...orders.map(
          (order) => AppAdvancedComponents.orderListItem(
            orderNumber: order['orderNumber'] as String,
            status: order['status'] as String,
            total: order['total'] as String,
            date: order['date'] as DateTime,
            onTap: () => _showOrderDetail(order),
            items: order['items'] as List<String>,
          ),
        ),
      ],
    );
  }

  Widget _buildAnimationExamples() {
    return AppResponsive.responsiveCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppResponsive.responsiveText(
            text: 'Animation Examples',
            mobileStyle: Theme.of(context).textTheme.titleLarge,
            tabletStyle: Theme.of(context).textTheme.headlineSmall,
          ),
          AppComponents.spacer16,

          // Animated counter
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  AppAnimations.animatedCounter(
                    value: 1234,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  const Text('Total Sales'),
                ],
              ),
              Column(
                children: [
                  AppAnimations.animatedCounter(
                    value: 56,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.green,
                    ),
                  ),
                  const Text('Orders'),
                ],
              ),
              Column(
                children: [
                  AppAnimations.animatedCounter(
                    value: 89,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blue,
                    ),
                  ),
                  const Text('Products'),
                ],
              ),
            ],
          ),
          AppComponents.spacer16,

          // Animated progress bar
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Progress'),
              AppComponents.spacer8,
              AppAnimations.animatedProgressBar(progress: 0.75, height: 8),
            ],
          ),
          AppComponents.spacer16,

          // Animated buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppAnimations.bounce(
                child: AppComponents.primaryButton(
                  text: 'Bounce',
                  onPressed: () {},
                ),
              ),
              AppAnimations.pulse(
                child: AppComponents.secondaryButton(
                  text: 'Pulse',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildResponsiveExamples() {
    return AppResponsive.responsiveCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppResponsive.responsiveText(
            text: 'Responsive Examples',
            mobileStyle: Theme.of(context).textTheme.titleLarge,
            tabletStyle: Theme.of(context).textTheme.headlineSmall,
          ),
          AppComponents.spacer16,

          // Responsive text dengan ukuran berbeda
          AppResponsive.responsiveText(
            text: 'Ini adalah contoh text yang responsive',
            mobileStyle: const TextStyle(fontSize: 14),
            tabletStyle: const TextStyle(fontSize: 16),
            desktopStyle: const TextStyle(fontSize: 18),
            largeDesktopStyle: const TextStyle(fontSize: 20),
          ),
          AppComponents.spacer16,

          // Responsive container
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.backgroundSecondary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: AppResponsive.responsiveText(
              text:
                  'Container dengan padding yang berbeda di setiap screen size',
              mobileStyle: const TextStyle(fontSize: 12),
              tabletStyle: const TextStyle(fontSize: 14),
              desktopStyle: const TextStyle(fontSize: 16),
            ),
          ).responsiveContainer(
            mobilePadding: const EdgeInsets.all(8),
            tabletPadding: const EdgeInsets.all(16),
            desktopPadding: const EdgeInsets.all(24),
          ),
        ],
      ),
    );
  }

  // ========================================
  // HELPER METHODS
  // ========================================

  void _showProductDetail(Map<String, String> product) {
    showDialog(
      context: context,
      builder: (context) => AppAnimations.fadeIn(
        child: AlertDialog(
          title: Text(product['name']!),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Harga: ${product['price']}'),
              AppComponents.spacer8,
              Text('Status: ${product['status']}'),
            ],
          ),
          actions: [
            AppComponents.textButton(
              text: 'Batal',
              onPressed: () => Navigator.pop(context),
            ),
            AppComponents.primaryButton(
              text: 'Beli',
              onPressed: () {
                Navigator.pop(context);
                _showSnackBar('Produk dibeli!');
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showOrderDetail(Map<String, dynamic> order) {
    AppAdvancedComponents.showCustomBottomSheet(
      context: context,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Detail Order #${order['orderNumber']}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            AppComponents.spacer16,
            Text('Status: ${order['status']}'),
            Text('Total: ${order['total']}'),
            Text('Tanggal: ${_formatDate(order['date'] as DateTime)}'),
            if (order['items'] != null) ...[
              AppComponents.spacer8,
              Text('Items: ${(order['items'] as List<String>).join(', ')}'),
            ],
          ],
        ),
      ),
    );
  }

  void _showAdvancedBottomSheet() {
    AppAdvancedComponents.showCustomBottomSheet(
      context: context,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppAnimations.slideInUp(
              child: Text(
                'Advanced Bottom Sheet',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            AppComponents.spacer16,
            AppAnimations.staggered(
              index: 0,
              child: ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: const Text('Keranjang'),
                onTap: () {
                  Navigator.pop(context);
                  _showSnackBar('Membuka keranjang');
                },
              ),
            ),
            AppAnimations.staggered(
              index: 1,
              child: ListTile(
                leading: const Icon(Icons.history),
                title: const Text('Riwayat'),
                onTap: () {
                  Navigator.pop(context);
                  _showSnackBar('Membuka riwayat');
                },
              ),
            ),
            AppAnimations.staggered(
              index: 2,
              child: ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Pengaturan'),
                onTap: () {
                  Navigator.pop(context);
                  _showSnackBar('Membuka pengaturan');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showConfirmationDialog() async {
    final confirmed = await AppAdvancedComponents.showConfirmationDialog(
      context: context,
      title: 'Konfirmasi',
      message: 'Apakah Anda yakin ingin menyimpan data ini?',
    );

    if (confirmed) {
      _showSnackBar('Data berhasil disimpan!');
      _resetForm();
    }
  }

  void _resetForm() {
    setState(() {
      _formController.clear();
      _selectedDate = DateTime.now();
      _selectedCategory = null;
    });
    _showSnackBar('Form telah direset');
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year} ${date.hour}:${date.minute.toString().padLeft(2, '0')}';
  }
}
