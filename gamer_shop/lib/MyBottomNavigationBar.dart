import 'package:flutter/material.dart';
import 'package:gamer_shop/constants.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int currentIndex = 0;

  // Update the selected index and rebuild the widget
  void updateCurrentIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: const Color.fromARGB(17, 0, 0, 0),
          borderRadius: BorderRadius.circular(36),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 28),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Home
            _buildNavItem(
              icon: Icons.home,
              index: 0,
            ),
            // Favorite
            _buildNavItem(
              icon: Icons.favorite,
              index: 1,
            ),
            // Shopping Cart
            _buildNavItem(
              icon: Icons.shopping_cart,
              index: 2,
            ),
            // Profile
            _buildNavItem(
              icon: Icons.person,
              index: 3,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({required IconData icon, required int index}) {
    final isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () {
        updateCurrentIndex(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
              height: 3,
              width: 50,
              color: isSelected ? kSecondaryColor : Colors.transparent,
            ),
          ),
          Icon(
            icon,
            size: 40,
            color: isSelected ? kSecondaryColor : Colors.grey,
          ),
        ],
      ),
    );
  }
}
