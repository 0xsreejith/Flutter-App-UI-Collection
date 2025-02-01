import 'package:flutter/material.dart';
import 'package:gamer_shop/constants.dart';

class Rating extends StatelessWidget {
  final int rating; // Accepts rating as a parameter

  const Rating({super.key, required this.rating}); // Constructor to pass rating

  @override
  Widget build(BuildContext context) {
    // Create a list to store the stars
    List<Icon> stars = [];

    // Loop to add full stars (colored)
    for (int i = 0; i < rating; i++) {
      stars.add(Icon(Icons.star, color: kSecondaryColor, size: 16));
    }

    // Loop to add empty stars (greyed out)
    for (int i = rating; i < 5; i++) {
      stars.add(const Icon(Icons.star, color: Colors.black54, size: 10));
    }

    return Row(
      children: stars,
    );
  }
}
