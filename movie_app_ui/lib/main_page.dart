import 'package:carousel_slider/carousel_slider.dart' as carousel_slider;
import 'package:carousel_slider/carousel_controller.dart' as carousel_controller;
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final movies = <dynamic>[
    {
      'Title': 'Joker',
      'Image':
          'https://www.tallengestore.com/cdn/shop/products/Joker_-_Put_On_A_Happy_Face_-_Joaquin_Phoenix_-_Hollywood_English_Movie_Poster_3_de5e4cfc-cfd4-4732-aad1-271d6bdb1587.jpg?v=1579504979',
      'Director': 'Directed by Todd Phillips',
      'rating': '5.0',
      'duration': "2h:42m",
    },
    {
      'Title': 'Pathan',
      'Image':
          'https://www.tallengestore.com/cdn/shop/products/Pathan-ShahRukhKhan-BollywoodHindiMoviePoster_d4846edc-20de-497e-ab2c-07a53e52e268.jpg?v=1675251724',
      'Director': 'Directed by Siddharth Anand',
      'rating': '5.0',
      'duration': "2h:10m",
    },
  ];

  final carousel_controller.CarouselController _controller =
      carousel_controller.CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Movie Carousel"),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: carousel_slider.CarouselSlider(
          items: movies.map((movie) {
            return Builder(
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 5,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            movie['Image'],
                            height: 300,
                            width: MediaQuery.of(context).size.width * 0.8,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          movie['Title'],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          movie['Director'],
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Rating: ${movie['rating']} | Duration: ${movie['duration']}",
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
          options: carousel_slider.CarouselOptions(
            height: 500,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            viewportFraction: 0.8,
          ),
          carouselController: _controller,
        ),
      ),
    );
  }
}
