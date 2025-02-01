import 'package:flutter/material.dart';
import 'package:gamer_shop/models/product.dart';

class ProductDetails extends StatelessWidget {
  final Product game;
  const ProductDetails({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scaffold(
        body: Center(
          child: Text(game.name),
        ),
      ),
    );
  }
}