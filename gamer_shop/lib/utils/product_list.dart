import 'package:flutter/material.dart';
import 'package:gamer_shop/constants.dart';
import 'package:gamer_shop/models/product.dart';
import 'package:gamer_shop/product_details.dart';
import 'package:gamer_shop/utils/ratings.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  int currentSelectItems = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
     
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return gamingItems(index);
            }),
      ),
    );
  }

  GestureDetector gamingItems(int index) {
    
    double scale = 1.1;
    Color backgroundColor = kBackgroundColor;
    Color textColor = kPrimaryTextColor;
    if (currentSelectItems == index) {
      scale = 1.35;
      backgroundColor = kSelectCardBackgroundColor;
      textColor = Colors.white;
    }
    final game = productList[index];
    final productRate=game.rating;
    return GestureDetector(
      onDoubleTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails(game: game)));
      },
      onTap: () {
        // for navigation
        if (currentSelectItems == index) {
        } else {
          setState(
            () {
              currentSelectItems = index;
            },
          );
        }
      },
      child: Row(
        children: [
          //baseContainer
          Container(
            width: 320 * scale,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Stack(
              children: [
                Container(
                  width: 260 * scale,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(10, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 28,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 7 * scale,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 90,
                          ),
                          child: Text(
                            game.name,
                            maxLines: 2,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14 * scale,
                              color: textColor,
                              height: 1.5,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7 * scale,
                        ),
                        SizedBox(
                          height: 8 * scale,
                        ),
                        Text(
                          "\$${game.price}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16 * scale,
                            color: textColor,
                          ),
                        ),
                        SizedBox(
                          height: 8 * scale,
                        ),
                        Rating(rating: productRate,),
                        const SizedBox(
                          height: 10,
                        )
                        
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: Hero(
                      tag: game.imagePic,
                      child: Image.asset(
                        game.imagePic,
                        height: 80 * scale,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
