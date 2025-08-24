import 'package:flutter/material.dart';
import '../constant/app_colors.dart';
import 'app_theme.dart';
import 'app_components.dart';

/// Contoh implementasi Design System dalam aplikasi Yokapos
/// Menunjukkan penggunaan theme, colors, dan components
class DesignSystemExample extends StatefulWidget {
  const DesignSystemExample({super.key});

  @override
  State<DesignSystemExample> createState() => _DesignSystemExampleState();
}

class _DesignSystemExampleState extends State<DesignSystemExample> {
  bool _isDarkMode = false;
  final TextEditingController _searchController = TextEditingController();
  final List<String> _categories = ['Semua', 'Makanan', 'Minuman', 'Snack'];
  int _selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yokapos Design System',
      theme: _isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
      home: Scaffold(
        backgroundColor: _isDarkMode
            ? AppColors.primary2
            : AppColors.background,
        appBar: AppBar(
          title: const Text('Yokapos Design System'),
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
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              _buildHeaderSection(),
              AppComponents.spacer24,

              // Search Section
              _buildSearchSection(),
              AppComponents.spacer24,

              // Category Filter Section
              _buildCategorySection(),
              AppComponents.spacer24,

              // Product Grid Section
              _buildProductGridSection(),
              AppComponents.spacer24,

              // Button Examples Section
              _buildButtonExamplesSection(),
              AppComponents.spacer24,

              // Form Examples Section
              _buildFormExamplesSection(),
              AppComponents.spacer24,

              // Status Examples Section
              _buildStatusExamplesSection(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _showBottomSheet(context);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selamat Datang di Yokapos',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          AppComponents.spacer8,
          Text(
            'Design System yang konsisten untuk pengalaman terbaik',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppColors.white.withOpacity(0.9),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Pencarian', style: Theme.of(context).textTheme.titleLarge),
        AppComponents.spacer8,
        AppComponents.searchField(
          hint: 'Cari produk...',
          controller: _searchController,
          onChanged: (value) {
            // Handle search
            print('Searching for: $value');
          },
          onClear: () {
            _searchController.clear();
          },
        ),
      ],
    );
  }

  Widget _buildCategorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Kategori', style: Theme.of(context).textTheme.titleLarge),
        AppComponents.spacer8,
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _categories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: AppComponents.filterChip(
                  label: _categories[index],
                  isSelected: _selectedCategoryIndex == index,
                  onTap: () {
                    setState(() {
                      _selectedCategoryIndex = index;
                    });
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProductGridSection() {
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
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Produk Unggulan', style: Theme.of(context).textTheme.titleLarge),
        AppComponents.spacer16,
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.75,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            final isAvailable = product['status'] == 'Tersedia';

            return AppComponents.productCard(
              title: product['name']!,
              price: product['price']!,
              imageUrl: product['image'],
              onTap: () {
                _showProductDetail(context, product);
              },
              trailing: AppComponents.statusBadge(
                text: product['status']!,
                type: isAvailable ? BadgeType.success : BadgeType.error,
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildButtonExamplesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Contoh Button', style: Theme.of(context).textTheme.titleLarge),
        AppComponents.spacer16,

        // Primary Button
        AppComponents.primaryButton(
          text: 'Tambah ke Keranjang',
          onPressed: () {
            _showSnackBar('Produk ditambahkan ke keranjang!');
          },
        ),
        AppComponents.spacer16,

        // Secondary Button
        AppComponents.secondaryButton(
          text: 'Lihat Detail',
          onPressed: () {
            _showSnackBar('Membuka detail produk');
          },
        ),
        AppComponents.spacer16,

        // Text Button
        AppComponents.textButton(
          text: 'Batal',
          onPressed: () {
            _showSnackBar('Aksi dibatalkan');
          },
        ),
        AppComponents.spacer16,

        // Loading Button
        AppComponents.primaryButton(
          text: 'Loading...',
          onPressed: () {},
          isLoading: true,
        ),
      ],
    );
  }

  Widget _buildFormExamplesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Contoh Form', style: Theme.of(context).textTheme.titleLarge),
        AppComponents.spacer16,

        AppComponents.textField(
          label: 'Nama Lengkap',
          hint: 'Masukkan nama lengkap',
          prefixIcon: const Icon(Icons.person),
        ),
        AppComponents.spacer16,

        AppComponents.textField(
          label: 'Email',
          hint: 'contoh@email.com',
          keyboardType: TextInputType.emailAddress,
          prefixIcon: const Icon(Icons.email),
        ),
        AppComponents.spacer16,

        AppComponents.textField(
          label: 'Password',
          hint: 'Masukkan password',
          obscureText: true,
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: const Icon(Icons.visibility),
        ),
      ],
    );
  }

  Widget _buildStatusExamplesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contoh Status Badge',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        AppComponents.spacer16,

        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            AppComponents.statusBadge(text: 'Sukses', type: BadgeType.success),
            AppComponents.statusBadge(text: 'Error', type: BadgeType.error),
            AppComponents.statusBadge(text: 'Warning', type: BadgeType.warning),
            AppComponents.statusBadge(text: 'Info', type: BadgeType.info),
            AppComponents.statusBadge(text: 'Primary', type: BadgeType.primary),
          ],
        ),
      ],
    );
  }

  void _showProductDetail(BuildContext context, Map<String, String> product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
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
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Menu Cepat', style: Theme.of(context).textTheme.titleLarge),
            AppComponents.spacer16,

            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Keranjang'),
              onTap: () {
                Navigator.pop(context);
                _showSnackBar('Membuka keranjang');
              },
            ),

            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('Riwayat Pesanan'),
              onTap: () {
                Navigator.pop(context);
                _showSnackBar('Membuka riwayat');
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Pengaturan'),
              onTap: () {
                Navigator.pop(context);
                _showSnackBar('Membuka pengaturan');
              },
            ),
          ],
        ),
      ),
    );
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
}
