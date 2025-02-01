import 'package:flutter/material.dart';
import 'package:gamer_shop/MyBottomNavigationBar.dart';
import 'package:gamer_shop/constants.dart';
import 'package:gamer_shop/utils/product_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> category = [
    "Controllers",
    "Headsets",
    "Keyboards",
    "Speakers",
    "VR Accessories"
  ];
  int currentSelectItems = 0;

  void updateSelectedCategory(int index) {
    setState(() {
      currentSelectItems = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: MyBottomNavigationBar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // for menu and search
          TopBarItems(),
          // for welcome text
          WelcomeText(),
          const SizedBox(height: 20),
          CategorySection(
            category: category,
            currentSelectItems: currentSelectItems,
            onCategorySelected: updateSelectedCategory,
          ),
          //for products
          ProductList()
        ],
      ),
    );
  }
}

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
    required this.category,
    required this.currentSelectItems,
    required this.onCategorySelected,
  });

  final List<String> category;
  final int currentSelectItems;
  final Function(int) onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => onCategorySelected(index),
            child: Container(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: currentSelectItems == index
                          ? kSecondaryColor
                          : kSecondTextColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 3,
                      width: 50,
                      color: currentSelectItems == index
                          ? kSecondaryColor
                          : Colors.transparent,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: const Text(
        "Welcome to \nPlaystation® Accessories ",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }
}

class TopBarItems extends StatelessWidget {
  const TopBarItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: AppBar(
        leading: const Icon(
          Icons.menu,
          size: 40,
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 35,
          )
        ],
      ),
    );
  }
}
