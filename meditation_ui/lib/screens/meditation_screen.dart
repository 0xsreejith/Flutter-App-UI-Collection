// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            height: 300,
            width: double.infinity,
            color: const Color(0xffd4dcbc),
          ),
          Positioned(
              top: 150,
              child: Transform.rotate(
                angle: 45,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Color(0xfffdeccd),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(300))),
                ),
              )),
          Positioned(
              top: 240,
              child: Transform.rotate(
                angle: 45,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Color(0xfffedacc),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(300))),
                ),
              )),
          Positioned(
              top: 240,
              child: Transform.rotate(
                angle: 45,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(300))),
                ),
              )),
          Positioned(
              left: 0,
              right: 0,
              top: 160,
              child: Image.network(
                'https://widgetwisdom.com/wp-content/uploads/2024/12/Organic-Flat-People-Meditating-Illustration.png',
                height: 300,
              )),
          Positioned(
              top: 140,
              right: -10,
              child: Image.network(
                  'https://widgetwisdom.com/wp-content/uploads/2024/12/Cloud-Icons.png')),
          Positioned(
              top: 10,
              left: -10,
              child: Image.network(
                  'https://widgetwisdom.com/wp-content/uploads/2024/12/Cloud-Icons.png')),
          Positioned(
              left: 0,
              right: 0,
              top: 460,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Nature Your ',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: 'Peaceful Mind ',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xff583823),
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: 'With',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xff583823),
                              fontWeight: FontWeight.bold)),
                                    TextSpan(
                          text: ' AI',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold)),

                    ]),
              )),
          Positioned(
              top: 550,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 99, 7, 7),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
