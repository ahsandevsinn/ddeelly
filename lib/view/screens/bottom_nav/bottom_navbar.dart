import 'package:ddeelly/core/imports/imports.dart';

class BottomNavbar extends StatefulWidget {
  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    CatagoriesScreen(),
    LocationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
               BoxShadow(
                color: AppColors.bottomNavBorderColor,
                offset: Offset(0, -10),
                blurRadius: 20,
                spreadRadius: 0,
              )
            ],
            color: AppColors.white,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.home, "Home", 0),
              _buildNavItem(Icons.grid_view_rounded, "Catagories", 1),
              _buildNavItem(Icons.location_on, "Location", 2),
              _buildNavItem(Icons.person, "Profile", 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    bool isActive = _selectedIndex == index;

    return GestureDetector(
      onTap: () => setState(() => _selectedIndex = index),
      child: AnimatedContainer(
        height: 50,
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: isActive
            ? BoxDecoration(
                gradient: AppColors.primaryGradient,
                borderRadius: BorderRadius.circular(12),
              )
            : null,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isActive ? Colors.white : Colors.grey,
              size: 22,
            ),
            if (isActive) ...[
              const SizedBox(width: 6),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
