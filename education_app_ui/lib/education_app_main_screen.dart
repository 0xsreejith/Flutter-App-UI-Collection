import 'package:education_app_ui/screens/featured_screen.dart';
import 'package:education_app_ui/themes/color.dart';
import 'package:flutter/material.dart';

class EducationAppMainScreen extends StatefulWidget {
  const EducationAppMainScreen({super.key});

  @override
  State<EducationAppMainScreen> createState() => _EducationAppMainScreenState();
}

class _EducationAppMainScreenState extends State<EducationAppMainScreen> {
  int currentIndex = 0;
  static const List<Widget> _pages = <Widget>[
    FeaturedScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor1,
          iconSize: 26,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.star),
              icon: Icon(Icons.star_border),
              label: "Featured",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.play_circle),
              icon: Icon(Icons.play_circle_outline),
              label: "Learning ",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.favorite),
              icon: Icon(Icons.favorite_border),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.settings),
              icon: Icon(Icons.settings_outlined),
              label: "Settings",
            ),
          ]),
    );
  }
}
